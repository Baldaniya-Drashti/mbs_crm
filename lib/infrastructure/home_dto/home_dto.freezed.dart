// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HomeDTO _$HomeDTOFromJson(Map<String, dynamic> json) {
  return _HomeDTO.fromJson(json);
}

/// @nodoc
mixin _$HomeDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;

  /// Serializes this HomeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeDTOCopyWith<HomeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDTOCopyWith<$Res> {
  factory $HomeDTOCopyWith(HomeDTO value, $Res Function(HomeDTO) then) =
      _$HomeDTOCopyWithImpl<$Res, HomeDTO>;
  @useResult
  $Res call({int? id, String? name, String? slug, String? image_url});
}

/// @nodoc
class _$HomeDTOCopyWithImpl<$Res, $Val extends HomeDTO>
    implements $HomeDTOCopyWith<$Res> {
  _$HomeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? image_url = freezed,
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
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            image_url: freezed == image_url
                ? _value.image_url
                : image_url // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeDTOImplCopyWith<$Res> implements $HomeDTOCopyWith<$Res> {
  factory _$$HomeDTOImplCopyWith(
    _$HomeDTOImpl value,
    $Res Function(_$HomeDTOImpl) then,
  ) = __$$HomeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? slug, String? image_url});
}

/// @nodoc
class __$$HomeDTOImplCopyWithImpl<$Res>
    extends _$HomeDTOCopyWithImpl<$Res, _$HomeDTOImpl>
    implements _$$HomeDTOImplCopyWith<$Res> {
  __$$HomeDTOImplCopyWithImpl(
    _$HomeDTOImpl _value,
    $Res Function(_$HomeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? image_url = freezed,
  }) {
    return _then(
      _$HomeDTOImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        image_url: freezed == image_url
            ? _value.image_url
            : image_url // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDTOImpl implements _HomeDTO {
  const _$HomeDTOImpl({this.id, this.name, this.slug, this.image_url});

  factory _$HomeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? image_url;

  @override
  String toString() {
    return 'HomeDTO(id: $id, name: $name, slug: $slug, image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, image_url);

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDTOImplCopyWith<_$HomeDTOImpl> get copyWith =>
      __$$HomeDTOImplCopyWithImpl<_$HomeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDTOImplToJson(this);
  }
}

abstract class _HomeDTO implements HomeDTO {
  const factory _HomeDTO({
    final int? id,
    final String? name,
    final String? slug,
    final String? image_url,
  }) = _$HomeDTOImpl;

  factory _HomeDTO.fromJson(Map<String, dynamic> json) = _$HomeDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get image_url;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeDTOImplCopyWith<_$HomeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
