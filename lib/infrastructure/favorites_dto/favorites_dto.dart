// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorites_dto.freezed.dart';
part 'favorites_dto.g.dart';

@freezed
class FavoritesDTO with _$FavoritesDTO {
  const factory FavoritesDTO({
    int? id,
    String? name,
    String? slug,
    double? price,
    String? image,
  }) = _FavoritesDTO;

  factory FavoritesDTO.fromJson(Map<String, dynamic> json) =>
      _$FavoritesDTOFromJson(json);
}
