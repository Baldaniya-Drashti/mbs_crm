import 'package:freezed_annotation/freezed_annotation.dart';
part 'attachment_file_dto.freezed.dart';
part 'attachment_file_dto.g.dart';

@freezed
class AttachmentFileDTO with _$AttachmentFileDTO {
  const factory AttachmentFileDTO({
    int? id,
    String? name,
    String? url,
    @Default(false) bool uploaded,
  }) = _AttachmentFileDTO;
  factory AttachmentFileDTO.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFileDTOFromJson(json);
}
