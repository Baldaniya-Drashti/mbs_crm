// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDTOImpl _$$HomeDTOImplFromJson(Map<String, dynamic> json) =>
    _$HomeDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      formType: (json['form_type'] as num?)?.toInt(),
      formName: json['form_name'] as String?,
      createdAt: json['createdAt'] as String?,
      slug: json['slug'] as String?,
      image_url: json['image_url'] as String?,
      formId: json['formId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$HomeDTOImplToJson(_$HomeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'form_type': instance.formType,
      'form_name': instance.formName,
      'createdAt': instance.createdAt,
      'slug': instance.slug,
      'image_url': instance.image_url,
      'formId': instance.formId,
      'data': instance.data,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
    };
