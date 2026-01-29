// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_file_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormFileGroupDTOImpl _$$FormFileGroupDTOImplFromJson(
  Map<String, dynamic> json,
) => _$FormFileGroupDTOImpl(
  sectionSlug: json['section_slug'] as String?,
  optionSlug: json['option_slug'] as String?,
  optionType: json['option_type'] as String?,
  files: (json['files'] as List<dynamic>?)
      ?.map((e) => AttachmentFileDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$FormFileGroupDTOImplToJson(
  _$FormFileGroupDTOImpl instance,
) => <String, dynamic>{
  'section_slug': instance.sectionSlug,
  'option_slug': instance.optionSlug,
  'option_type': instance.optionType,
  'files': instance.files,
};
