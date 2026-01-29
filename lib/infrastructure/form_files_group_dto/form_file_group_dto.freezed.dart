// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_file_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FormFileGroupDTO _$FormFileGroupDTOFromJson(Map<String, dynamic> json) {
  return _FormFileGroupDTO.fromJson(json);
}

/// @nodoc
mixin _$FormFileGroupDTO {
  @JsonKey(name: 'section_slug')
  String? get sectionSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'option_slug')
  String? get optionSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'option_type')
  String? get optionType => throw _privateConstructorUsedError;
  List<AttachmentFileDTO>? get files => throw _privateConstructorUsedError;

  /// Serializes this FormFileGroupDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormFileGroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFileGroupDTOCopyWith<FormFileGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFileGroupDTOCopyWith<$Res> {
  factory $FormFileGroupDTOCopyWith(
    FormFileGroupDTO value,
    $Res Function(FormFileGroupDTO) then,
  ) = _$FormFileGroupDTOCopyWithImpl<$Res, FormFileGroupDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'section_slug') String? sectionSlug,
    @JsonKey(name: 'option_slug') String? optionSlug,
    @JsonKey(name: 'option_type') String? optionType,
    List<AttachmentFileDTO>? files,
  });
}

/// @nodoc
class _$FormFileGroupDTOCopyWithImpl<$Res, $Val extends FormFileGroupDTO>
    implements $FormFileGroupDTOCopyWith<$Res> {
  _$FormFileGroupDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFileGroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionSlug = freezed,
    Object? optionSlug = freezed,
    Object? optionType = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _value.copyWith(
            sectionSlug: freezed == sectionSlug
                ? _value.sectionSlug
                : sectionSlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            optionSlug: freezed == optionSlug
                ? _value.optionSlug
                : optionSlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            optionType: freezed == optionType
                ? _value.optionType
                : optionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            files: freezed == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<AttachmentFileDTO>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FormFileGroupDTOImplCopyWith<$Res>
    implements $FormFileGroupDTOCopyWith<$Res> {
  factory _$$FormFileGroupDTOImplCopyWith(
    _$FormFileGroupDTOImpl value,
    $Res Function(_$FormFileGroupDTOImpl) then,
  ) = __$$FormFileGroupDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'section_slug') String? sectionSlug,
    @JsonKey(name: 'option_slug') String? optionSlug,
    @JsonKey(name: 'option_type') String? optionType,
    List<AttachmentFileDTO>? files,
  });
}

/// @nodoc
class __$$FormFileGroupDTOImplCopyWithImpl<$Res>
    extends _$FormFileGroupDTOCopyWithImpl<$Res, _$FormFileGroupDTOImpl>
    implements _$$FormFileGroupDTOImplCopyWith<$Res> {
  __$$FormFileGroupDTOImplCopyWithImpl(
    _$FormFileGroupDTOImpl _value,
    $Res Function(_$FormFileGroupDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormFileGroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionSlug = freezed,
    Object? optionSlug = freezed,
    Object? optionType = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _$FormFileGroupDTOImpl(
        sectionSlug: freezed == sectionSlug
            ? _value.sectionSlug
            : sectionSlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        optionSlug: freezed == optionSlug
            ? _value.optionSlug
            : optionSlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        optionType: freezed == optionType
            ? _value.optionType
            : optionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        files: freezed == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<AttachmentFileDTO>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFileGroupDTOImpl implements _FormFileGroupDTO {
  const _$FormFileGroupDTOImpl({
    @JsonKey(name: 'section_slug') this.sectionSlug,
    @JsonKey(name: 'option_slug') this.optionSlug,
    @JsonKey(name: 'option_type') this.optionType,
    final List<AttachmentFileDTO>? files,
  }) : _files = files;

  factory _$FormFileGroupDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFileGroupDTOImplFromJson(json);

  @override
  @JsonKey(name: 'section_slug')
  final String? sectionSlug;
  @override
  @JsonKey(name: 'option_slug')
  final String? optionSlug;
  @override
  @JsonKey(name: 'option_type')
  final String? optionType;
  final List<AttachmentFileDTO>? _files;
  @override
  List<AttachmentFileDTO>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormFileGroupDTO(sectionSlug: $sectionSlug, optionSlug: $optionSlug, optionType: $optionType, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFileGroupDTOImpl &&
            (identical(other.sectionSlug, sectionSlug) ||
                other.sectionSlug == sectionSlug) &&
            (identical(other.optionSlug, optionSlug) ||
                other.optionSlug == optionSlug) &&
            (identical(other.optionType, optionType) ||
                other.optionType == optionType) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sectionSlug,
    optionSlug,
    optionType,
    const DeepCollectionEquality().hash(_files),
  );

  /// Create a copy of FormFileGroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFileGroupDTOImplCopyWith<_$FormFileGroupDTOImpl> get copyWith =>
      __$$FormFileGroupDTOImplCopyWithImpl<_$FormFileGroupDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFileGroupDTOImplToJson(this);
  }
}

abstract class _FormFileGroupDTO implements FormFileGroupDTO {
  const factory _FormFileGroupDTO({
    @JsonKey(name: 'section_slug') final String? sectionSlug,
    @JsonKey(name: 'option_slug') final String? optionSlug,
    @JsonKey(name: 'option_type') final String? optionType,
    final List<AttachmentFileDTO>? files,
  }) = _$FormFileGroupDTOImpl;

  factory _FormFileGroupDTO.fromJson(Map<String, dynamic> json) =
      _$FormFileGroupDTOImpl.fromJson;

  @override
  @JsonKey(name: 'section_slug')
  String? get sectionSlug;
  @override
  @JsonKey(name: 'option_slug')
  String? get optionSlug;
  @override
  @JsonKey(name: 'option_type')
  String? get optionType;
  @override
  List<AttachmentFileDTO>? get files;

  /// Create a copy of FormFileGroupDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFileGroupDTOImplCopyWith<_$FormFileGroupDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
