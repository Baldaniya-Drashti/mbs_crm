// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDTO with _$HomeDTO {
  const factory HomeDTO({
    @JsonKey(name: 'id') int? server_id,
    @Default("") String localId,
    @Default(false) bool isSynced,
    String? syncAction,
    String? status,
    String? updatedAt,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    String? createdAt,
    @JsonKey(name: 'form_slug') String? slug,
    String? image_url,
    @JsonKey(name: 'form_json') Map<String, dynamic>? data,
  }) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);

  /// ---------- This Method is user when fetch from Database ------------ ////
  factory HomeDTO.fromDb(Map<String, dynamic> row) {
    return HomeDTO(
      server_id: row['server_id'] as int?,
      localId: row['local_id'] as String,
      isSynced: row['is_synced'] == 1,
      syncAction: row['sync_action'] as String?,
      formName: row['form_name']?.toString(),
      slug: row['form_slug']?.toString(),
      formType: row['form_type'],
      createdAt: row['created_at'] as String?,
      status: row['status'] as String?,
      updatedAt: row['updated_at'] as String?,
      data: row['form_json'] != null ? jsonDecode(row['form_json']) : null,
    );
  }
}
