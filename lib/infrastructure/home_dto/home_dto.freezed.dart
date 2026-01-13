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
  @JsonKey(name: 'form_type')
  int? get formType => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_name')
  String? get formName => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  String? get formId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
  $Res call({
    int? id,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    String? createdAt,
    String? slug,
    String? image_url,
    String? formId,
    Map<String, dynamic>? data,
    String? status,
    String? updatedAt,
  });
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
    Object? formType = freezed,
    Object? formName = freezed,
    Object? createdAt = freezed,
    Object? slug = freezed,
    Object? image_url = freezed,
    Object? formId = freezed,
    Object? data = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            formType: freezed == formType
                ? _value.formType
                : formType // ignore: cast_nullable_to_non_nullable
                      as int?,
            formName: freezed == formName
                ? _value.formName
                : formName // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            image_url: freezed == image_url
                ? _value.image_url
                : image_url // ignore: cast_nullable_to_non_nullable
                      as String?,
            formId: freezed == formId
                ? _value.formId
                : formId // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
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
  $Res call({
    int? id,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    String? createdAt,
    String? slug,
    String? image_url,
    String? formId,
    Map<String, dynamic>? data,
    String? status,
    String? updatedAt,
  });
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
    Object? formType = freezed,
    Object? formName = freezed,
    Object? createdAt = freezed,
    Object? slug = freezed,
    Object? image_url = freezed,
    Object? formId = freezed,
    Object? data = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$HomeDTOImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        formType: freezed == formType
            ? _value.formType
            : formType // ignore: cast_nullable_to_non_nullable
                  as int?,
        formName: freezed == formName
            ? _value.formName
            : formName // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        image_url: freezed == image_url
            ? _value.image_url
            : image_url // ignore: cast_nullable_to_non_nullable
                  as String?,
        formId: freezed == formId
            ? _value.formId
            : formId // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDTOImpl implements _HomeDTO {
  const _$HomeDTOImpl({
    this.id,
    @JsonKey(name: 'form_type') this.formType,
    @JsonKey(name: 'form_name') this.formName,
    this.createdAt,
    this.slug,
    this.image_url,
    this.formId,
    final Map<String, dynamic>? data,
    this.status,
    this.updatedAt,
  }) : _data = data;

  factory _$HomeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDTOImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'form_type')
  final int? formType;
  @override
  @JsonKey(name: 'form_name')
  final String? formName;
  @override
  final String? createdAt;
  @override
  final String? slug;
  @override
  final String? image_url;
  @override
  final String? formId;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? status;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'HomeDTO(id: $id, formType: $formType, formName: $formName, createdAt: $createdAt, slug: $slug, image_url: $image_url, formId: $formId, data: $data, status: $status, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formType, formType) ||
                other.formType == formType) &&
            (identical(other.formName, formName) ||
                other.formName == formName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    formType,
    formName,
    createdAt,
    slug,
    image_url,
    formId,
    const DeepCollectionEquality().hash(_data),
    status,
    updatedAt,
  );

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
    @JsonKey(name: 'form_type') final int? formType,
    @JsonKey(name: 'form_name') final String? formName,
    final String? createdAt,
    final String? slug,
    final String? image_url,
    final String? formId,
    final Map<String, dynamic>? data,
    final String? status,
    final String? updatedAt,
  }) = _$HomeDTOImpl;

  factory _HomeDTO.fromJson(Map<String, dynamic> json) = _$HomeDTOImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'form_type')
  int? get formType;
  @override
  @JsonKey(name: 'form_name')
  String? get formName;
  @override
  String? get createdAt;
  @override
  String? get slug;
  @override
  String? get image_url;
  @override
  String? get formId;
  @override
  Map<String, dynamic>? get data;
  @override
  String? get status;
  @override
  String? get updatedAt;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeDTOImplCopyWith<_$HomeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
