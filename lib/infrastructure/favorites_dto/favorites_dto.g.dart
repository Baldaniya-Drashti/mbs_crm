// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesDTOImpl _$$FavoritesDTOImplFromJson(Map<String, dynamic> json) =>
    _$FavoritesDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$FavoritesDTOImplToJson(_$FavoritesDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'price': instance.price,
      'image': instance.image,
    };
