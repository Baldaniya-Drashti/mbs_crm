// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDTOImpl _$$HomeDTOImplFromJson(Map<String, dynamic> json) =>
    _$HomeDTOImpl(
      server_id: (json['id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      localId: json['localId'] as String? ?? "",
      isSynced: json['isSynced'] as bool? ?? false,
      syncAction: json['syncAction'] as String?,
      status: json['status'] as String?,
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      formType: (json['form_type'] as num?)?.toInt(),
      formName: json['form_name'] as String?,
      createdAt: (json['created_at'] as num?)?.toInt(),
      slug: json['form_slug'] as String?,
      image_url: json['image_url'] as String?,
      data: json['form_json'] as Map<String, dynamic>?,
      formFiles: (json['form_files'] as List<dynamic>?)
          ?.map((e) => FormFileGroupDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      deletedFileIds: (json['deletedFileIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      pdfPath: json['pdfPath'] as String?,
    );

Map<String, dynamic> _$$HomeDTOImplToJson(_$HomeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.server_id,
      'user_name': instance.userName,
      'localId': instance.localId,
      'isSynced': instance.isSynced,
      'syncAction': instance.syncAction,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
      'form_type': instance.formType,
      'form_name': instance.formName,
      'created_at': instance.createdAt,
      'form_slug': instance.slug,
      'image_url': instance.image_url,
      'form_json': instance.data,
      'form_files': instance.formFiles,
      'deletedFileIds': instance.deletedFileIds,
      'pdfPath': instance.pdfPath,
    };
