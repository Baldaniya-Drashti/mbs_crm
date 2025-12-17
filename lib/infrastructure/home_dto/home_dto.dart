// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
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
    String? formId,
    Map<String, dynamic>? data,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);

  factory HomeDTO.fromDb(Map<String, dynamic> row) {
    return HomeDTO(
      id: row['id'] as int?,
      formId: row['form_id']?.toString(),
      name: row['name'] as String?,
      slug: row['slug'] as String?,
      status: row['status'] as String?,
      createdAt: row['created_at'] as String?,
      updatedAt: row['updated_at'] as String?,
      data: row['data'] != null ? jsonDecode(row['data']) : null,
    );
  }
}
