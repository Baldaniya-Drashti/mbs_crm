// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDTOImpl _$$HomeDTOImplFromJson(Map<String, dynamic> json) =>
    _$HomeDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image_url: json['image_url'] as String?,
    );

Map<String, dynamic> _$$HomeDTOImplToJson(_$HomeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image_url': instance.image_url,
    };
