// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDTOImpl _$$HomeDTOImplFromJson(Map<String, dynamic> json) =>
    _$HomeDTOImpl(
      server_id: (json['id'] as num?)?.toInt(),
      localId: json['localId'] as String? ?? "",
      isSynced: json['isSynced'] as bool? ?? false,
      syncAction: json['syncAction'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] as String?,
      formType: (json['form_type'] as num?)?.toInt(),
      formName: json['form_name'] as String?,
      createdAt: json['createdAt'] as String?,
      slug: json['form_slug'] as String?,
      image_url: json['image_url'] as String?,
      data: json['form_json'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HomeDTOImplToJson(_$HomeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.server_id,
      'localId': instance.localId,
      'isSynced': instance.isSynced,
      'syncAction': instance.syncAction,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
      'form_type': instance.formType,
      'form_name': instance.formName,
      'createdAt': instance.createdAt,
      'form_slug': instance.slug,
      'image_url': instance.image_url,
      'form_json': instance.data,
    };
