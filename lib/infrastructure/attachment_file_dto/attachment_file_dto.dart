import 'package:freezed_annotation/freezed_annotation.dart';
part 'attachment_file_dto.freezed.dart';
part 'attachment_file_dto.g.dart';

@freezed
class AttachmentFileDTO with _$AttachmentFileDTO {
  const factory AttachmentFileDTO({
    String? id,
    String? name,
    String? localPath,
    String? remoteUrl,
    @Default(false) bool uploaded,
  }) = _AttachmentFileDTO;
  factory AttachmentFileDTO.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFileDTOFromJson(json);
}
