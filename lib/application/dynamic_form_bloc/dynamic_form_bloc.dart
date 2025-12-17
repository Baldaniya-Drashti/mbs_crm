// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/database/db_repository.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/core/widgets/utility/normalization_utilities.dart';
import 'package:uuid/uuid.dart';

part 'dynamic_form_event.dart';
part 'dynamic_form_state.dart';
part 'dynamic_form_bloc.freezed.dart';

@injectable
class DynamicFormBloc extends Bloc<DynamicFormEvent, DynamicFormState> {
  IMainFacade mainFacade;
  final formKey = GlobalKey<FormBuilderState>();

  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;
  final Map<String, String> tableCache = {};
  // final Map<String, List<AttachmentFileDTO>> attachmentCache = {};

  DynamicFormBloc(this.mainFacade) : super(DynamicFormState.initial()) {
    on<DynamicFormEvent>((event, emit) async {
      await event.map(
        loadForm: (e) async {
          emit(state.copyWith(isLoading: true, updateFormId: e.id));
          try {
            final schema = await mainFacade.loadSchema(e.formType);
            emit(state.copyWith(schema: schema));

            if (e.id != null) {
              add(DynamicFormEvent.getFormDetails(e.id ?? -1));
            } else {
              emit(state.copyWith(isLoading: false));
            }
          } catch (e) {
            print("Catch Error---> $e");
          }
        },
        getFormDetails: (e) async {
          try {
            final form = await DBRepository().getFormById(e.id);
            final rawData = Map<String, dynamic>.from(form?.data ?? {});

            /// ------- RESTORE TABLE DATA ---------- ///
            final expanded = expandTableValues(rawData);

            tableCache.clear();
            expanded.forEach((k, v) {
              if (k.startsWith('table_')) {
                tableCache[k] = v?.toString() ?? '';
              }
            });

            /// ------- RESTORE ATTACHMENT DATA --------- ///
            final attachments = rawData['attachments'] as Map<String, dynamic>?;

            Map<String, List<AttachmentFileDTO>> restoredAttachments = {};

            if (attachments != null) {
              attachments.forEach((key, list) {
                restoredAttachments[key] = (list as List)
                    .map((e) => AttachmentFileDTO.fromJson(e))
                    .toList();
              });
            }

            /// ------- Restore NORMAL FIELDS --------- ///
            final normalizedData = normalizeFormData(expanded, state.schema!);

            WidgetsBinding.instance.addPostFrameCallback((_) {
              formKey.currentState?.patchValue(normalizedData);
            });

            emit(
              state.copyWith(
                isLoading: false,
                attachmentCache: restoredAttachments,
              ),
            );
            print("getFormDetails---> ${form?.data?['tables']}");
          } catch (e) {
            print("Error --Get Valye ---> $e");
          }
        },

        attachFileEvent: (e) async {
          final result = await FilePicker.platform.pickFiles(
            allowMultiple: e.field.multipleImages,
            withData: false,
          );

          if (result == null || result.files.isEmpty) return;
          final fieldKey = e.field.key;
          if (fieldKey == null) return;

          final currentFiles = List<AttachmentFileDTO>.from(
            state.attachmentCache[fieldKey] ?? [],
          );
          for (final file in result.files) {
            if (file.path == null) continue;

            final alreadyExists = currentFiles.any(
              (f) => f.localPath == file.path || f.name == file.name,
            );

            if (alreadyExists) {
              debugPrint('Duplicate file ignored: ${file.name}');
              continue;
            }

            currentFiles.add(
              AttachmentFileDTO(
                id: const Uuid().v4(),
                name: file.name,
                localPath: file.path!,
                uploaded: false,
              ),
            );
          }

          emit(
            state.copyWith(
              attachmentCache: {
                ...state.attachmentCache,
                fieldKey: currentFiles,
              },
            ),
          );
        },
        submitForm: (e) async {
          emit(state.copyWith(isSubmitting: true, success: false));
          final data = Map<String, dynamic>.from(e.values);
          data.addAll(tableCache);

          try {
            Map<String, dynamic> tables = {};

            data.forEach((key, value) {
              if (key.startsWith("table_")) {
                final parts = key.split("_");

                final tableName = "${parts[1]}_${parts[2]}";
                final rowIndex = parts[4];
                final columnKey = parts.sublist(5).join("_");

                tables[tableName] ??= {};
                tables[tableName][rowIndex] ??= {};
                tables[tableName][rowIndex][columnKey] = value;
              }
            });

            data.removeWhere((key, value) => key.startsWith("table_"));
            data["tables"] = tables;

            /// ------- ATTACHMENTS → JSON --------
            if (state.attachmentCache.isNotEmpty) {
              data["attachments"] = state.attachmentCache.map(
                (key, files) =>
                    MapEntry(key, files.map((f) => f.toJson()).toList()),
              );
            }
            final cleaned = removeNulls(prepareForJson(data));

            final form = HomeDTO(
              id: state.updateFormId,
              formId: state.schema?.id.toString(),
              name: state.schema?.title,
              slug: state.schema?.slug,
              data: cleaned,
              status: 'draft',
              createdAt: DateTime.now().toIso8601String(),
              updatedAt: DateTime.now().toIso8601String(),
            );

            if (state.updateFormId == null) {
              await DBRepository().saveFormOffline(form: form);
            } else {
              await DBRepository().updateFormOffline(form: form);
            }

            debugPrint(
              "Sending Data:- ${jsonEncode(cleaned)}",
              wrapWidth: 5024,
            );

            emit(state.copyWith(isSubmitting: false, success: true));
            currentContext.maybePop(true);
          } catch (e) {
            emit(state.copyWith(isSubmitting: false, success: false));
            print("Submit error--> $e");
          }
        },
      );
    });
  }

  Map<String, dynamic> normalizeFormData(
    Map<String, dynamic> rawData,
    DynamicFormDTO schema,
  ) {
    final normalized = <String, dynamic>{};

    for (FormSection section in schema.sections ?? []) {
      for (FormFieldSchema field in section.fields ?? []) {
        final key = field.key;

        if (key == null || !rawData.containsKey(key)) continue;

        normalized[key] = normalizeFromJson(rawData[key], field);
      }
    }

    return normalized;
  }

  Map<String, dynamic> expandTableValues(Map<String, dynamic> data) {
    final result = Map<String, dynamic>.from(data);

    if (!data.containsKey('tables')) return result;

    final tables = data['tables'] as Map<String, dynamic>;

    tables.forEach((tableName, rows) {
      final rowMap = rows as Map<String, dynamic>;

      rowMap.forEach((rowIndex, columns) {
        final colMap = columns as Map<String, dynamic>;

        colMap.forEach((colKey, value) {
          final fieldKey = 'table_${tableName}_row_${rowIndex}_$colKey';
          result[fieldKey] = value;
        });
      });
    });

    result.remove('tables');
    return result;
  }

  dynamic prepareForJson(dynamic value) {
    if (value is DateTime) {
      return value.toIso8601String();
    } else if (value is List) {
      return value.map(prepareForJson).toList();
    } else if (value is Map<String, dynamic>) {
      return value.map((k, v) => MapEntry(k, prepareForJson(v)));
    }
    return value;
  }
}
