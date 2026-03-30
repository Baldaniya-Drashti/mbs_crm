// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbs_crm/infrastructure/form_files_group_dto/form_file_group_dto.dart';
part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDTO with _$HomeDTO {
  const factory HomeDTO({
    @JsonKey(name: 'id') int? server_id,
    @JsonKey(name: 'user_name') String? userName,
    @Default("") String localId,
    @Default(false) bool isSynced,
    String? syncAction,
    String? status,
    int? updatedAt,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    @JsonKey(name: 'created_at') int? createdAt,
    @JsonKey(name: 'form_slug') String? slug,
    String? image_url,
    @JsonKey(name: 'form_json') Map<String, dynamic>? data,
    @JsonKey(name: 'form_files') List<FormFileGroupDTO>? formFiles,
    List<int>? deletedFileIds,
    String? pdfPath,
  }) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);

  // ---------- This Method is user when fetch from Database ------------ //
  factory HomeDTO.fromDb(Map<String, dynamic> row) {
    return HomeDTO(
      server_id: row['server_id'] as int?,
      localId: row['local_id'] as String,
      isSynced: row['is_synced'] == 1,
      syncAction: row['sync_action'] as String?,
      formName: row['form_name']?.toString(),
      slug: row['form_slug']?.toString(),
      formType: row['form_type'],
      createdAt: row['created_at'] as int?,
      status: row['status'] as String?,
      updatedAt: row['updated_at'] as int?,
      data: row['form_json'] != null ? jsonDecode(row['form_json']) : null,
      formFiles: (row['form_files'] != null && row['form_files'] != 'null')
          ? (jsonDecode(row['form_files']) as List<dynamic>? ?? [])
                .map((e) => FormFileGroupDTO.fromJson(e))
                .toList()
          : [],
      deletedFileIds: row['deleted_file_ids'] != null
          ? List<int>.from(jsonDecode(row['deleted_file_ids']))
          : [],
      pdfPath: row['pdf_path'] as String?,
    );
  }
}
