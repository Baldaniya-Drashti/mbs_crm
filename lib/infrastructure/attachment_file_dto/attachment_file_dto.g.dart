// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentFileDTOImpl _$$AttachmentFileDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AttachmentFileDTOImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  localPath: json['localPath'] as String?,
  remoteUrl: json['remoteUrl'] as String?,
  uploaded: json['uploaded'] as bool? ?? false,
);

Map<String, dynamic> _$$AttachmentFileDTOImplToJson(
  _$AttachmentFileDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'localPath': instance.localPath,
  'remoteUrl': instance.remoteUrl,
  'uploaded': instance.uploaded,
};
