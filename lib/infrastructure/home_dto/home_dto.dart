// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDTO with _$HomeDTO {
  const factory HomeDTO({
    int? id,
    String? name,
    String? slug,
    String? image_url,
  }) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);
}
