// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
part 'form_file_group_dto.freezed.dart';
part 'form_file_group_dto.g.dart';

@freezed
class FormFileGroupDTO with _$FormFileGroupDTO {
  const factory FormFileGroupDTO({
    @JsonKey(name: 'section_slug') String? sectionSlug,
    @JsonKey(name: 'option_slug') String? optionSlug,
    @JsonKey(name: 'option_type') String? optionType,
    List<AttachmentFileDTO>? files,
  }) = _FormFileGroupDTO;
  factory FormFileGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$FormFileGroupDTOFromJson(json);
}
