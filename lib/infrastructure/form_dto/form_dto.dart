// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'form_dto.freezed.dart';
part 'form_dto.g.dart';

@freezed
class FormDTO with _$FormDTO {
  const factory FormDTO({int? id, String? title, String? slug}) = _FormDTO;

  factory FormDTO.fromJson(Map<String, dynamic> json) =>
      _$FormDTOFromJson(json);
}
