// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FormDTO _$FormDTOFromJson(Map<String, dynamic> json) {
  return _FormDTO.fromJson(json);
}

/// @nodoc
mixin _$FormDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this FormDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormDTOCopyWith<FormDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDTOCopyWith<$Res> {
  factory $FormDTOCopyWith(FormDTO value, $Res Function(FormDTO) then) =
      _$FormDTOCopyWithImpl<$Res, FormDTO>;
  @useResult
  $Res call({int? id, String? title, String? slug});
}

/// @nodoc
class _$FormDTOCopyWithImpl<$Res, $Val extends FormDTO>
    implements $FormDTOCopyWith<$Res> {
  _$FormDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FormDTOImplCopyWith<$Res> implements $FormDTOCopyWith<$Res> {
  factory _$$FormDTOImplCopyWith(
    _$FormDTOImpl value,
    $Res Function(_$FormDTOImpl) then,
  ) = __$$FormDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? slug});
}

/// @nodoc
class __$$FormDTOImplCopyWithImpl<$Res>
    extends _$FormDTOCopyWithImpl<$Res, _$FormDTOImpl>
    implements _$$FormDTOImplCopyWith<$Res> {
  __$$FormDTOImplCopyWithImpl(
    _$FormDTOImpl _value,
    $Res Function(_$FormDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(
      _$FormDTOImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FormDTOImpl implements _FormDTO {
  const _$FormDTOImpl({this.id, this.title, this.slug});

  factory _$FormDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? slug;

  @override
  String toString() {
    return 'FormDTO(id: $id, title: $title, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, slug);

  /// Create a copy of FormDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDTOImplCopyWith<_$FormDTOImpl> get copyWith =>
      __$$FormDTOImplCopyWithImpl<_$FormDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormDTOImplToJson(this);
  }
}

abstract class _FormDTO implements FormDTO {
  const factory _FormDTO({
    final int? id,
    final String? title,
    final String? slug,
  }) = _$FormDTOImpl;

  factory _FormDTO.fromJson(Map<String, dynamic> json) = _$FormDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get slug;

  /// Create a copy of FormDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDTOImplCopyWith<_$FormDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
