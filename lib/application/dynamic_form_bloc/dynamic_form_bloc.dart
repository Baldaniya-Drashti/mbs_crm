// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/database/db_repository.dart';
import 'package:mbs_crm/core/helper/form_identifier.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/pdf_format/generate_pdf.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/form_files_group_dto/form_file_group_dto.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/date_time_format.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:mbs_crm/presentation/core/widgets/utility/normalization_utilities.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_form_helper.dart';
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

  DynamicFormBloc(this.mainFacade) : super(DynamicFormState.initial()) {
    on<DynamicFormEvent>((event, emit) async {
      await event.map(
        inspectionGradeChanged: (e) {
          String? grade;
          if (e.grade.contains('Detailed')) grade = 'D';
          if (e.grade.contains('Close')) grade = 'C';
          if (e.grade.contains('Visual')) grade = 'V';

          emit(
            state.copyWith(
              selectedInspectionGrade: grade,
              rebuildTick: state.rebuildTick + 1,
            ),
          );
        },
        loadForm: (e) async {
          emit(state.copyWith(isLoading: true));
          try {
            final schema = await mainFacade.loadSchema(e.formSlug);
            emit(state.copyWith(schema: schema));

            if (e.formId == null) {
              emit(state.copyWith(isLoading: false));
              return;
            }

            add(DynamicFormEvent.getFormDetails(e.formId!));
          } catch (e) {
            debugPrint("Load Form Catch Error---> $e");
          }
        },
        getFormDetails: (e) async {
          try {
            final isOnline = await NetworkListener().isOnline();
            HomeDTO? form;
            if (isOnline && e.formId.serverId != null) {
              final res = await mainFacade.getFormDetailAPI(
                id: e.formId.serverId!,
              );
              res.fold(
                (l) {
                  showError(
                    message: l.maybeMap(
                      showAPIResponseMessage: (value) => value.message,
                      networkError: (value) =>
                          'Please check your internet connectivity',
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(currentContext);
                },
                (r) {
                  form = r;
                },
              );
            } else {
              form = await DBRepository().getFormByLocalId(e.formId.localId!);
            }
            final rawData = Map<String, dynamic>.from(form?.data ?? {});
            debugPrint(
              'Edit restored OK---> ${jsonEncode(form)}',
              wrapWidth: 5000,
            );
            final Map<String, dynamic> flatData = {};

            /// ---------- LOOP SECTIONS ----------
            rawData.forEach((sectionKey, sectionValue) {
              if (sectionValue is! Map<String, dynamic>) return;

              /// ---------- TABLES ----------
              if (sectionValue.containsKey('tables')) {
                final tables = Map<String, dynamic>.from(
                  sectionValue['tables'],
                );

                tables.forEach((tableName, rows) {
                  final rowMap = rows as Map<String, dynamic>;

                  rowMap.forEach((rowIndex, columns) {
                    final colMap = columns as Map<String, dynamic>;

                    colMap.forEach((colKey, value) {
                      final fieldKey =
                          'table_${tableName}_row_${rowIndex.replaceFirst('row_', '')}_$colKey';

                      flatData[fieldKey] = value;
                      tableCache[fieldKey] = value?.toString() ?? '';
                    });
                  });
                });
              }

              /// ---------- NORMAL / DROPDOWN ----------
              sectionValue.forEach((fieldKey, fieldValue) {
                if (fieldKey == 'tables') return;

                /// ---- DROPDOWN OBJECT ----
                if (fieldValue is Map<String, dynamic> &&
                    fieldValue.containsKey('answer')) {
                  final answer = fieldValue['answer'];

                  final fieldSchema = state.schema?.sections
                      ?.expand((s) => s.fields ?? <FormFieldSchema>[])
                      .firstWhere(
                        (f) => f.key == fieldKey,
                        orElse: () => FormFieldSchema(key: fieldKey),
                      );

                  flatData[fieldKey] = normalizeFromJson(
                    DynamicFormHelper.answerToValue(answer),
                    fieldSchema,
                  );

                  /// ---- REASON ----
                  if (fieldValue['reason'] != null) {
                    flatData['${fieldKey}_reason'] = fieldValue['reason'];
                  }
                }
                /// ---- NORMAL FIELD ----
                else {
                  final fieldSchema = state.schema?.sections
                      ?.expand((s) => s.fields ?? <FormFieldSchema>[])
                      .firstWhere(
                        (f) => f.key == fieldKey,
                        orElse: () => FormFieldSchema(key: fieldKey),
                      );

                  flatData[fieldKey] = normalizeFromJson(
                    fieldValue,
                    fieldSchema,
                  );
                }
              });
            });

            /// ---------- PATCH FORM ----------
            WidgetsBinding.instance.addPostFrameCallback((_) {
              formKey.currentState?.patchValue(flatData);
            });

            /// ---------- RESTORE FORM FILES ----------
            final restoredFormFiles = form?.formFiles ?? <FormFileGroupDTO>[];
            emit(
              state.copyWith(
                isLoading: false,
                existingForm: form,
                formFiles: restoredFormFiles,
              ),
            );
          } catch (e) {
            debugPrint("Error -- getFormDetails ---> $e");
          }
        },
        onDropDownChanged: (e) {
          final formState = formKey.currentState;
          if (formState == null) return;

          if (e.value != "No") {
            formState.fields['${e.fieldKey}_reason']?.didChange(null);

            /* final updatedAttachments =
                Map<String, List<AttachmentFileDTO>>.from(
                  state.attachmentCache,
                );
            updatedAttachments.remove('${e.fieldKey}_attachments'); */

            emit(state.copyWith(rebuildTick: state.rebuildTick + 1));
          } else {
            emit(state.copyWith(rebuildTick: state.rebuildTick + 1));
          }
        },
        attachFileEvent: (e) async {
          final result = await FilePicker.platform.pickFiles(
            allowMultiple: e.field.multipleImages,
            type: FileType.custom,
            allowedExtensions: ['jpg', 'jpeg', 'png'],
          );
          if (result == null) return;

          final bool isDropdownAttachment =
              e.field.key != null && e.field.key!.endsWith('_attachments');

          final optionType = isDropdownAttachment ? 'dropdown' : 'global';

          final fieldKeyInSchema = isDropdownAttachment
              ? e.field.key!.replaceAll('_attachments', '')
              : e.field.key;

          final section = state.schema!.sections!.firstWhere(
            (s) => s.fields!.any((f) => f.key == fieldKeyInSchema),
            orElse: () => state.schema!.sections!.firstWhere(
              (s) => s.key == 'attachments',
            ),
          );

          final sectionSlug =
              section.key ??
              (section.title ?? '').toLowerCase().replaceAll(' ', '_');

          // ---------------- UPDATE FORM FILE GROUP ----------------
          final updatedGroups = List<FormFileGroupDTO>.from(state.formFiles);

          final index = updatedGroups.indexWhere(
            (g) =>
                g.sectionSlug == sectionSlug &&
                g.optionSlug == e.field.key &&
                g.optionType == optionType,
          );

          FormFileGroupDTO group;
          if (index == -1) {
            group = FormFileGroupDTO(
              sectionSlug: sectionSlug,
              optionSlug: e.field.key,
              optionType: optionType,
              files: [],
            );
            updatedGroups.add(group);
          } else {
            group = updatedGroups[index];
          }

          final newFiles = List<AttachmentFileDTO>.from(group.files ?? []);

          for (final file in result.files) {
            if (file.path == null) continue;

            newFiles.add(
              AttachmentFileDTO(
                id: null,
                name: file.name,
                url: file.path!,
                uploaded: false,
              ),
            );
          }

          updatedGroups[index == -1 ? updatedGroups.length - 1 : index] = group
              .copyWith(files: newFiles);

          emit(state.copyWith(formFiles: updatedGroups));
        },
        deleteAttachmentEvent: (e) {
          final updatedGroups = List<FormFileGroupDTO>.from(state.formFiles);

          final groupIndex = updatedGroups.indexWhere(
            (g) =>
                g.sectionSlug == e.group.sectionSlug &&
                g.optionSlug == e.group.optionSlug &&
                g.optionType == e.group.optionType,
          );

          if (groupIndex == -1) return;

          final group = updatedGroups[groupIndex];
          final files = List<AttachmentFileDTO>.from(group.files ?? []);

          files.removeWhere((f) => f.url == e.file.url);

          final deletedIds = List<int>.from(state.deletedFileIds);
          final isRemote = e.file.url != null && e.file.url!.startsWith('http');

          if (isRemote && e.file.id != null) {
            deletedIds.add(e.file.id!);
          }

          updatedGroups[groupIndex] = group.copyWith(files: files);

          emit(
            state.copyWith(
              formFiles: updatedGroups,
              deletedFileIds: deletedIds,
            ),
          );
        },
        createForm: (e) async {
          emit(state.copyWith(isSubmitting: true, success: false));
          try {
            final payload = _buildPayload(e);
            final pdfFile = await generateAndSendPdfFile(
              context: e.context,
              json: payload,
              schema: state.schema!,
              formFiles: state.formFiles,
            );
            final form = _buildForm(payload, formFiles: state.formFiles)
                .copyWith(
                  localId: const Uuid().v4(),
                  createdAt: CustomDateTimeFormat.dateTimeToUtcTimestamp(
                    DateTime.now(),
                  ),
                  pdfPath: pdfFile.path,
                );

            await DBRepository().saveFormOffline(form: form);
            final isOnline = await NetworkListener().isOnline();
            if (isOnline) {
              var res = await mainFacade.addFormAPI(form: form);
              await res.fold(
                (l) {
                  showError(
                    message: l.maybeMap(
                      showAPIResponseMessage: (value) => value.message,
                      networkError: (value) =>
                          'Please check your internet connectivity',
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(e.context);
                  emit(state.copyWith(isSubmitting: false, success: false));
                  return;
                },
                (r) async {
                  await DBRepository().markAsSynced(
                    localId: form.localId,
                    serverId: r?.server_id ?? -1,
                  );
                  emit(state.copyWith(isSubmitting: false, success: true));
                  if (currentContext.mounted) {
                    Navigator.pop(currentContext, true);
                  }
                },
              );
            } else {
              emit(state.copyWith(isSubmitting: false, success: true));
              if (currentContext.mounted) {
                Navigator.pop(currentContext, true);
              }
            }
          } catch (e) {
            debugPrint("Create Form Error: $e");
            emit(state.copyWith(isSubmitting: false, success: false));
          }
        },
        updateForm: (e) async {
          emit(state.copyWith(isSubmitting: true, success: false));

          try {
            final payload = {..._buildPayload(e)};
            final pdfFile = await generateAndSendPdfFile(
              context: e.context,
              json: payload,
              schema: state.schema!,
              formFiles: state.formFiles,
            );

            final form = _buildForm(payload, formFiles: state.formFiles)
                .copyWith(
                  localId: e.formId.localId!,
                  server_id: e.formId.serverId,
                  deletedFileIds: state.deletedFileIds,
                  createdAt: state.existingForm?.createdAt,
                  updatedAt: CustomDateTimeFormat.dateTimeToUtcTimestamp(
                    DateTime.now(),
                  ),
                  pdfPath: pdfFile.path,
                );

            await DBRepository().updateFormOffline(form: form);

            final isOnline = await NetworkListener().isOnline();
            if (isOnline) {
              var res = await mainFacade.updateFormAPI(form: form);
              await res.fold(
                (l) {
                  showError(
                    message: l.maybeMap(
                      showAPIResponseMessage: (value) => value.message,
                      networkError: (value) =>
                          'Please check your internet connectivity',
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(e.context);
                  emit(state.copyWith(isSubmitting: false, success: false));
                  return;
                },
                (r) async {
                  await DBRepository().markAsSynced(
                    localId: form.localId,
                    serverId: r?.server_id ?? -1,
                  );

                  emit(state.copyWith(isSubmitting: false, success: true));

                  if (currentContext.mounted) {
                    Navigator.pop(currentContext, true);
                  }
                },
              );
            } else {
              emit(state.copyWith(isSubmitting: false, success: true));
              if (currentContext.mounted) {
                Navigator.pop(currentContext, true);
              }
            }
          } catch (e) {
            debugPrint("Update Form Error: $e");
            emit(state.copyWith(isSubmitting: false, success: false));
          }
        },
      );
    });
  }

  Map<String, dynamic> _buildPayload(dynamic e) {
    final data = Map<String, dynamic>.from(e.values)..addAll(tableCache);

    final tables = _extractTables(data);
    data.removeWhere((k, _) => k.startsWith("table_"));

    final Map<String, dynamic> payload = {};

    for (FormSection section in state.schema?.sections ?? []) {
      final sectionKey =
          section.key ??
          (section.title ?? '').toLowerCase().replaceAll(' ', '_');
      final sectionData = _buildSectionData(section, data, tables);

      if (sectionData.isNotEmpty) {
        payload[sectionKey] = sectionData;
      }
    }

    // _addGlobalAttachments(payload);
    return removeNulls(prepareForJson(payload));
  }

  Map<String, dynamic> _extractTables(Map<String, dynamic> data) {
    final Map<String, dynamic> tables = {};

    data.forEach((key, value) {
      if (!key.startsWith("table_")) return;

      final parts = key.split("_");
      final tableName = "${parts[1]}_${parts[2]}";
      final rowIndex = 'row_${parts[4]}';
      final columnKey = parts.sublist(5).join("_");
      tables[tableName] ??= <String, dynamic>{};
      final table = tables[tableName] as Map<String, dynamic>;
      table[rowIndex] ??= <String, dynamic>{};
      final row = table[rowIndex] as Map<String, dynamic>;
      row[columnKey] = value;
    });

    return tables;
  }

  Map<String, dynamic> _buildSectionData(
    FormSection section,
    Map<String, dynamic> data,
    Map<String, dynamic> tables,
  ) {
    final Map<String, dynamic> sectionData = {};

    for (FormFieldSchema field in section.fields ?? []) {
      final key = field.key;
      if (key == null) continue;

      if (field.type == 'table') {
        if (tables.isNotEmpty) {
          sectionData['tables'] = tables;
        }
        continue;
      }

      if (!data.containsKey(key)) continue;

      if (field.type == 'dropdown') {
        final dropdownData = _buildDropdownField(field, data);
        if (dropdownData != null) {
          sectionData[key] = dropdownData;
        }
        continue;
      }

      final value = data[key];
      if (value == null) continue;
      if (value is String && value.trim().isEmpty) continue;
      if (value is List && value.isEmpty) continue;
      if (value is Map && value.isEmpty) continue;

      sectionData[key] = value;
    }
    return sectionData;
  }

  Map<String, dynamic>? _buildDropdownField(
    FormFieldSchema field,
    Map<String, dynamic> data,
  ) {
    final answer = DynamicFormHelper.mapAnswer(data[field.key]);
    if (answer == null) return null;

    final fieldObj = <String, dynamic>{'answer': answer};

    if (answer == 2) {
      final reason = data['${field.key}_reason'];
      if (reason != null && reason.toString().isNotEmpty) {
        fieldObj['reason'] = reason;
      }
    }
    return fieldObj;
  }

  HomeDTO _buildForm(
    Map<String, dynamic> payload, {
    List<FormFileGroupDTO>? formFiles,
  }) {
    return HomeDTO(
      formType: state.schema?.id,
      formName: state.schema?.title,
      slug: state.schema?.slug,
      data: payload,
      formFiles: formFiles,
      status: 'draft',
      createdAt: CustomDateTimeFormat.dateTimeToUtcTimestamp(DateTime.now()),
      updatedAt: CustomDateTimeFormat.dateTimeToUtcTimestamp(DateTime.now()),
    );
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
