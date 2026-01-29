// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttachmentFileDTO _$AttachmentFileDTOFromJson(Map<String, dynamic> json) {
  return _AttachmentFileDTO.fromJson(json);
}

/// @nodoc
mixin _$AttachmentFileDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  bool get uploaded => throw _privateConstructorUsedError;

  /// Serializes this AttachmentFileDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttachmentFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentFileDTOCopyWith<AttachmentFileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentFileDTOCopyWith<$Res> {
  factory $AttachmentFileDTOCopyWith(
    AttachmentFileDTO value,
    $Res Function(AttachmentFileDTO) then,
  ) = _$AttachmentFileDTOCopyWithImpl<$Res, AttachmentFileDTO>;
  @useResult
  $Res call({int? id, String? name, String? url, bool uploaded});
}

/// @nodoc
class _$AttachmentFileDTOCopyWithImpl<$Res, $Val extends AttachmentFileDTO>
    implements $AttachmentFileDTOCopyWith<$Res> {
  _$AttachmentFileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttachmentFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? uploaded = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
            uploaded: null == uploaded
                ? _value.uploaded
                : uploaded // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttachmentFileDTOImplCopyWith<$Res>
    implements $AttachmentFileDTOCopyWith<$Res> {
  factory _$$AttachmentFileDTOImplCopyWith(
    _$AttachmentFileDTOImpl value,
    $Res Function(_$AttachmentFileDTOImpl) then,
  ) = __$$AttachmentFileDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? url, bool uploaded});
}

/// @nodoc
class __$$AttachmentFileDTOImplCopyWithImpl<$Res>
    extends _$AttachmentFileDTOCopyWithImpl<$Res, _$AttachmentFileDTOImpl>
    implements _$$AttachmentFileDTOImplCopyWith<$Res> {
  __$$AttachmentFileDTOImplCopyWithImpl(
    _$AttachmentFileDTOImpl _value,
    $Res Function(_$AttachmentFileDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttachmentFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? uploaded = null,
  }) {
    return _then(
      _$AttachmentFileDTOImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        uploaded: null == uploaded
            ? _value.uploaded
            : uploaded // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentFileDTOImpl implements _AttachmentFileDTO {
  const _$AttachmentFileDTOImpl({
    this.id,
    this.name,
    this.url,
    this.uploaded = false,
  });

  factory _$AttachmentFileDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentFileDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  @JsonKey()
  final bool uploaded;

  @override
  String toString() {
    return 'AttachmentFileDTO(id: $id, name: $name, url: $url, uploaded: $uploaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentFileDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.uploaded, uploaded) ||
                other.uploaded == uploaded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, uploaded);

  /// Create a copy of AttachmentFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentFileDTOImplCopyWith<_$AttachmentFileDTOImpl> get copyWith =>
      __$$AttachmentFileDTOImplCopyWithImpl<_$AttachmentFileDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentFileDTOImplToJson(this);
  }
}

abstract class _AttachmentFileDTO implements AttachmentFileDTO {
  const factory _AttachmentFileDTO({
    final int? id,
    final String? name,
    final String? url,
    final bool uploaded,
  }) = _$AttachmentFileDTOImpl;

  factory _AttachmentFileDTO.fromJson(Map<String, dynamic> json) =
      _$AttachmentFileDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get url;
  @override
  bool get uploaded;

  /// Create a copy of AttachmentFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentFileDTOImplCopyWith<_$AttachmentFileDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
