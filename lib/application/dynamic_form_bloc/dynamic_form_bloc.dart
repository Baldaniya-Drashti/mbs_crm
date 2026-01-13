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
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/form_dto/form_dto.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/injection.dart';
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
        loadForm: (e) async {
          emit(
            state.copyWith(
              isLoading: true,
              updateFormId: e.id,
              selectedForm: e.form,
            ),
          );
          try {
            final schema = await mainFacade.loadSchema(e.form.slug ?? '');
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
            debugPrint(
              'Edit restored OK---> ${jsonEncode(form)}',
              wrapWidth: 5000,
            );

            final Map<String, dynamic> flatData = {};
            final Map<String, List<AttachmentFileDTO>> restoredAttachments = {};

            /// ---------- LOOP SECTIONS ----------
            rawData.forEach((sectionKey, sectionValue) {
              if (sectionValue is! Map<String, dynamic>) return;

              /// ---------- TABLES ----------
              if (sectionValue.containsKey('tables')) {
                final tables = sectionValue['tables'] as Map<String, dynamic>;

                tables.forEach((tableName, rows) {
                  final rowMap = rows as Map<String, dynamic>;

                  rowMap.forEach((rowIndex, columns) {
                    final colMap = columns as Map<String, dynamic>;

                    colMap.forEach((colKey, value) {
                      final fieldKey =
                          'table_${tableName}_row_${rowIndex}_$colKey';
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
                      ?.expand((s) => s.fields ?? [])
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

                  /// ---- DROPDOWN ATTACHMENTS ----
                  if (fieldValue['attachments'] is List) {
                    restoredAttachments['${fieldKey}_attachments'] =
                        (fieldValue['attachments'] as List)
                            .map((e) => AttachmentFileDTO.fromJson(e))
                            .toList();
                  }
                }
                /// ---- NORMAL FIELD ----
                else {
                  final fieldSchema = state.schema?.sections
                      ?.expand((s) => s.fields ?? [])
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

            /// ---------- GLOBAL ATTACHMENTS ----------
            final attachments = rawData['attachments'];

            if (attachments is List) {
              restoredAttachments['attachments'] = attachments
                  .map((e) => AttachmentFileDTO.fromJson(e))
                  .toList();
            } else if (attachments is Map<String, dynamic>) {
              attachments.forEach((key, list) {
                if (list is List) {
                  restoredAttachments[key] = list
                      .map((e) => AttachmentFileDTO.fromJson(e))
                      .toList();
                }
              });
            }

            /// ---------- PATCH FORM ----------
            WidgetsBinding.instance.addPostFrameCallback((_) {
              formKey.currentState?.patchValue(flatData);
            });

            emit(
              state.copyWith(
                isLoading: false,
                attachmentCache: restoredAttachments,
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

            final updatedAttachments =
                Map<String, List<AttachmentFileDTO>>.from(
                  state.attachmentCache,
                );

            updatedAttachments.remove('${e.fieldKey}_attachments');

            emit(
              state.copyWith(
                attachmentCache: updatedAttachments,
                rebuildTick: state.rebuildTick + 1,
              ),
            );
          } else {
            emit(state.copyWith(rebuildTick: state.rebuildTick + 1));
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

          try {
            final payload = _buildPayload(e);
            final form = _buildForm(payload);

            final isOnline = await NetworkListener().isOnline();
            if (isOnline) {
              var res = await mainFacade.addFormAPI(
                form: form,
                // formName: state.selectedForm?.slug ?? '',
                // formType: (state.selectedForm?.id ?? -1).toString(),
                // formJson: form.toJson().toString(),
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
                  emit(state.copyWith(isSubmitting: false, success: false));
                },
                (r) {
                  emit(state.copyWith(isSubmitting: false, success: true));
                  currentContext.maybePop(true);
                },
              );
            } else {
              await _saveOffline(form);
              emit(state.copyWith(isSubmitting: false, success: true));
              currentContext.maybePop(true);
            }
          } catch (e) {
            print("Submit Form Error: $e");
            emit(state.copyWith(isSubmitting: false, success: false));
          }
          /* final data = Map<String, dynamic>.from(e.values);
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

            /// -------- NEW PAYLOAD ----------
            final Map<String, dynamic> payload = {};
            for (FormSection section in state.schema?.sections ?? []) {
              final sectionKey = (section.title ?? '').toLowerCase().replaceAll(
                ' ',
                '_',
              );

              final Map<String, dynamic> sectionData = {};

              for (FormFieldSchema field in section.fields ?? []) {
                final key = field.key;
                if (key == null) continue;

                /// -------- TABLE (FIXED) ----------
                if (field.type == 'table') {
                  if (tables.isNotEmpty) {
                    sectionData['tables'] = tables;
                  }
                  continue;
                }

                /// For non-table fields, ensure value exists
                if (!data.containsKey(key)) continue;

                /// -------- DROPDOWN ----------
                if (field.type == 'dropdown') {
                  final answer = DynamicFormHelper.mapAnswer(data[key]);
                  if (answer == null) continue;

                  final fieldObj = <String, dynamic>{'answer': answer};

                  if (answer == 2) {
                    final reason = data['${key}_reason'];
                    if (reason != null && reason.toString().isNotEmpty) {
                      fieldObj['reason'] = reason;
                    }

                    final files = state.attachmentCache['${key}_attachments'];
                    if (files != null && files.isNotEmpty) {
                      fieldObj['attachments'] = files
                          .map((e) => e.toJson())
                          .toList();
                    }
                  }

                  sectionData[key] = fieldObj;
                  continue;
                }

                /// -------- NORMAL FIELD ----------
                sectionData[key] = data[key];
              }

              if (sectionData.isNotEmpty) {
                payload[sectionKey] = sectionData;
              }
            }

            /// -------- GLOBAL ATTACHMENTS (RESTORED) ----------
            final List<Map<String, dynamic>> globalFiles = [];

            state.attachmentCache.forEach((key, files) {
              // skip dropdown attachments
              if (key.endsWith('_attachments')) return;

              for (final file in files) {
                globalFiles.add(file.toJson());
              }
            });

            if (globalFiles.isNotEmpty) {
              payload['attachments'] = globalFiles;
            }

            final cleaned = removeNulls(prepareForJson(payload));

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

            debugPrint("Sending Data:- ${jsonEncode(cleaned)}");

            emit(state.copyWith(isSubmitting: false, success: true));
            currentContext.maybePop(true);
          } catch (e) {
            emit(state.copyWith(isSubmitting: false, success: false));
          } */
        },
      );
    });
  }

  Map<String, dynamic> _buildPayload(dynamic e) {
    final data = Map<String, dynamic>.from(e.values)..addAll(tableCache);

    final tables = _extractTables(data);
    data.removeWhere((k, _) => k.startsWith("table_"));

    final Map<String, dynamic> payload = {};

    for (final section in state.schema?.sections ?? []) {
      final sectionKey = (section.title ?? '').toLowerCase().replaceAll(
        ' ',
        '_',
      );
      final sectionData = _buildSectionData(section, data, tables);

      if (sectionData.isNotEmpty) {
        payload[sectionKey] = sectionData;
      }
    }

    _addGlobalAttachments(payload);

    return removeNulls(prepareForJson(payload));
  }

  Map<String, dynamic> _extractTables(Map<String, dynamic> data) {
    final Map<String, dynamic> tables = {};

    data.forEach((key, value) {
      if (!key.startsWith("table_")) return;

      final parts = key.split("_");
      final tableName = "${parts[1]}_${parts[2]}";
      final rowIndex = parts[4];
      final columnKey = parts.sublist(5).join("_");

      tables.putIfAbsent(tableName, () => {});
      tables[tableName].putIfAbsent(rowIndex, () => {});
      tables[tableName][rowIndex][columnKey] = value;
    });

    return tables;
  }

  Map<String, dynamic> _buildSectionData(
    FormSection section,
    Map<String, dynamic> data,
    Map<String, dynamic> tables,
  ) {
    final Map<String, dynamic> sectionData = {};

    for (final field in section.fields ?? []) {
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

      sectionData[key] = data[key];
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

      final files = state.attachmentCache['${field.key}_attachments'];
      if (files != null && files.isNotEmpty) {
        fieldObj['attachments'] = files.map((e) => e.toJson()).toList();
      }
    }

    return fieldObj;
  }

  void _addGlobalAttachments(Map<String, dynamic> payload) {
    final files = <Map<String, dynamic>>[];

    state.attachmentCache.forEach((key, value) {
      if (key.endsWith('_attachments')) return;
      files.addAll(value.map((e) => e.toJson()));
    });

    if (files.isNotEmpty) {
      payload['attachments'] = files;
    }
  }

  HomeDTO _buildForm(Map<String, dynamic> payload) {
    return HomeDTO(
      id: state.updateFormId,
      formType: state.schema?.id,
      formName: state.schema?.title,
      slug: state.schema?.slug,
      data: payload,
      status: 'draft',
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
    );
  }

  Future<void> _saveOffline(HomeDTO form) async {
    if (state.updateFormId == null) {
      await DBRepository().saveFormOffline(form: form);
    } else {
      await DBRepository().updateFormOffline(form: form);
    }
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
