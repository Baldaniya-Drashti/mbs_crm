// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dynamic_form_dto.freezed.dart';
part 'dynamic_form_dto.g.dart';

@freezed
class DynamicFormDTO with _$DynamicFormDTO {
  const factory DynamicFormDTO({
    int? id,
    String? title,
    List<FormSection>? sections,
  }) = _DynamicFormDTO;
  factory DynamicFormDTO.fromJson(Map<String, dynamic> json) =>
      _$DynamicFormDTOFromJson(json);
}

@freezed
class FormSection with _$FormSection {
  const factory FormSection({String? title, List<FormFieldSchema>? fields}) =
      _FormSection;
  factory FormSection.fromJson(Map<String, dynamic> json) =>
      _$FormSectionFromJson(json);
}

@freezed
class FormFieldSchema with _$FormFieldSchema {
  const factory FormFieldSchema({
    String? label,
    String? initialValue,
    String? type, // text, number, dropdown, signature, table, radio
    @Default(false) bool required,
    @Default(false) bool readOnly,
    List<String>? options,
    int? rowCount, // dropdown
    List<TableColumnSchema>? tablecolumn, // table columns
  }) = _FormFieldSchema;
  factory FormFieldSchema.fromJson(Map<String, dynamic> json) =>
      _$FormFieldSchemaFromJson(json);
}

@freezed
class TableColumnSchema with _$TableColumnSchema {
  const factory TableColumnSchema({String? label}) = _TableColumnSchema;
  factory TableColumnSchema.fromJson(Map<String, dynamic> json) =>
      _$TableColumnSchemaFromJson(json);
}
