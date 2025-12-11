// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormDTOImpl _$$FormDTOImplFromJson(Map<String, dynamic> json) =>
    _$FormDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$FormDTOImplToJson(_$FormDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
    };
