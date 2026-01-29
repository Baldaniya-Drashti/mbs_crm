// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentFileDTOImpl _$$AttachmentFileDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AttachmentFileDTOImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  url: json['url'] as String?,
  uploaded: json['uploaded'] as bool? ?? false,
);

Map<String, dynamic> _$$AttachmentFileDTOImplToJson(
  _$AttachmentFileDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'url': instance.url,
  'uploaded': instance.uploaded,
};
