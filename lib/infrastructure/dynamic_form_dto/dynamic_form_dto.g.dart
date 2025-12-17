// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicFormDTOImpl _$$DynamicFormDTOImplFromJson(Map<String, dynamic> json) =>
    _$DynamicFormDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => FormSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DynamicFormDTOImplToJson(
  _$DynamicFormDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'slug': instance.slug,
  'title': instance.title,
  'sections': instance.sections,
};

_$FormSectionImpl _$$FormSectionImplFromJson(Map<String, dynamic> json) =>
    _$FormSectionImpl(
      title: json['title'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FormFieldSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormSectionImplToJson(_$FormSectionImpl instance) =>
    <String, dynamic>{'title': instance.title, 'fields': instance.fields};

_$FormFieldSchemaImpl _$$FormFieldSchemaImplFromJson(
  Map<String, dynamic> json,
) => _$FormFieldSchemaImpl(
  key: json['key'] as String?,
  label: json['label'] as String?,
  maxLines: (json['maxLines'] as num?)?.toInt(),
  initialValue: json['initialValue'] as String?,
  type: json['type'] as String?,
  required: json['required'] as bool? ?? false,
  readOnly: json['readOnly'] as bool? ?? false,
  options: (json['options'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  rowCount: (json['rowCount'] as num?)?.toInt(),
  tablecolumn: (json['tablecolumn'] as List<dynamic>?)
      ?.map((e) => TableColumnSchema.fromJson(e as Map<String, dynamic>))
      .toList(),
  multipleImages: json['multipleImages'] as bool? ?? true,
);

Map<String, dynamic> _$$FormFieldSchemaImplToJson(
  _$FormFieldSchemaImpl instance,
) => <String, dynamic>{
  'key': instance.key,
  'label': instance.label,
  'maxLines': instance.maxLines,
  'initialValue': instance.initialValue,
  'type': instance.type,
  'required': instance.required,
  'readOnly': instance.readOnly,
  'options': instance.options,
  'rowCount': instance.rowCount,
  'tablecolumn': instance.tablecolumn,
  'multipleImages': instance.multipleImages,
};

_$TableColumnSchemaImpl _$$TableColumnSchemaImplFromJson(
  Map<String, dynamic> json,
) => _$TableColumnSchemaImpl(
  key: json['key'] as String?,
  label: json['label'] as String?,
  type: json['type'] as String?,
  display: json['display'] as String?,
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => TableColumnSchema.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$TableColumnSchemaImplToJson(
  _$TableColumnSchemaImpl instance,
) => <String, dynamic>{
  'key': instance.key,
  'label': instance.label,
  'type': instance.type,
  'display': instance.display,
  'children': instance.children,
};
