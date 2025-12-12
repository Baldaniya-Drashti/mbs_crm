import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

part 'dynamic_form_event.dart';
part 'dynamic_form_state.dart';
part 'dynamic_form_bloc.freezed.dart';

@injectable
class DynamicFormBloc extends Bloc<DynamicFormEvent, DynamicFormState> {
  IMainFacade mainFacade;
  DynamicFormBloc(this.mainFacade) : super(DynamicFormState.initial()) {
    on<DynamicFormEvent>((event, emit) async {
      await event.map(
        loadForm: (e) async {
          emit(state.copyWith(isLoading: true));
          try {
            final schema = await mainFacade.loadSchema(e.formId);
            emit(state.copyWith(schema: schema, isLoading: false));
          } catch (e) {
            print("Catch Error---> ${e}");
          }
        },
        /*updateValue: (e) {
          final updated = Map<String, dynamic>.from(state.dynamicValues);
          updated[e.key] = e.value;
          emit(state.copyWith(dynamicValues: updated));
        },*/
        submitForm: (e) async {
          emit(state.copyWith(isSubmitting: true));
          final data = Map<String, dynamic>.from(e.values);

          try {
            Map<String, dynamic> tables = {};

            data.forEach((key, value) {
              if (key.startsWith("table_")) {
                final parts = key.split("_");

                final tableName = "${parts[1]}_${parts[2]}"; // table_instrument
                final rowIndex = parts[4];
                final columnKey = parts.sublist(5).join("_");

                tables[tableName] ??= {};
                tables[tableName][rowIndex] ??= {};
                tables[tableName][rowIndex][columnKey] = value;
              }
            });

            /// remove table raw fields
            data.removeWhere((key, value) => key.startsWith("table_"));

            /// insert structured table data
            data["tables"] = tables;

            /// Convert DateTime, images, signature etc
            final jsonReady = prepareForJson(data);
            final cleaned = removeNulls(jsonReady);

            debugPrint(jsonEncode(cleaned), wrapWidth: 5024);
          } catch (e) {
            print("Submit error--> $e");
          }
          emit(state.copyWith(isSubmitting: false, success: true));
        },
      );
    });
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

  dynamic removeNulls(dynamic value) {
    if (value is Map) {
      final result = <String, dynamic>{}; // always a new modifiable map

      value.forEach((key, val) {
        final cleaned = removeNulls(val);

        if (cleaned != null &&
            cleaned != "" &&
            cleaned != [] &&
            cleaned != {}) {
          result[key] = cleaned;
        }
      });

      return result;
    }

    if (value is List) {
      final list = value
          .map(removeNulls)
          .where(
            (item) => item != null && item != "" && item != [] && item != {},
          )
          .toList(); // always new list

      return list;
    }

    return value;
  }
}
