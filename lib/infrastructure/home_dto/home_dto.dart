// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDTO with _$HomeDTO {
  const factory HomeDTO({
    int? id,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    String? createdAt,
    String? slug,
    String? image_url,
    String? formId,
    Map<String, dynamic>? data,
    String? status,
    String? updatedAt,
  }) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);

  factory HomeDTO.fromDb(Map<String, dynamic> row) {
    return HomeDTO(
      id: row['id'] as int?,
      formName: row['form_name']?.toString(),
      slug: row['form_slug']?.toString(),
      formType: row['form_type'],
      createdAt: row['created_at'] as String?,
      formId: row['form_id']?.toString(),
      status: row['status'] as String?,
      updatedAt: row['updated_at'] as String?,
      data: row['data'] != null ? jsonDecode(row['data']) : null,
    );
  }
}
