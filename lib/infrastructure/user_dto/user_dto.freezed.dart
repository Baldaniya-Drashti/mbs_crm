// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get user_role_id => throw _privateConstructorUsedError;
  String? get user_role_name => throw _privateConstructorUsedError;

  /// Serializes this UserDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call({
    int? id,
    String? first_name,
    String? last_name,
    String? email,
    int? user_role_id,
    String? user_role_name,
  });
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? user_role_id = freezed,
    Object? user_role_name = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            first_name: freezed == first_name
                ? _value.first_name
                : first_name // ignore: cast_nullable_to_non_nullable
                      as String?,
            last_name: freezed == last_name
                ? _value.last_name
                : last_name // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            user_role_id: freezed == user_role_id
                ? _value.user_role_id
                : user_role_id // ignore: cast_nullable_to_non_nullable
                      as int?,
            user_role_name: freezed == user_role_name
                ? _value.user_role_name
                : user_role_name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserDTOImplCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$UserDTOImplCopyWith(
    _$UserDTOImpl value,
    $Res Function(_$UserDTOImpl) then,
  ) = __$$UserDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? first_name,
    String? last_name,
    String? email,
    int? user_role_id,
    String? user_role_name,
  });
}

/// @nodoc
class __$$UserDTOImplCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$UserDTOImpl>
    implements _$$UserDTOImplCopyWith<$Res> {
  __$$UserDTOImplCopyWithImpl(
    _$UserDTOImpl _value,
    $Res Function(_$UserDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? user_role_id = freezed,
    Object? user_role_name = freezed,
  }) {
    return _then(
      _$UserDTOImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        first_name: freezed == first_name
            ? _value.first_name
            : first_name // ignore: cast_nullable_to_non_nullable
                  as String?,
        last_name: freezed == last_name
            ? _value.last_name
            : last_name // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        user_role_id: freezed == user_role_id
            ? _value.user_role_id
            : user_role_id // ignore: cast_nullable_to_non_nullable
                  as int?,
        user_role_name: freezed == user_role_name
            ? _value.user_role_name
            : user_role_name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDTOImpl implements _UserDTO {
  const _$UserDTOImpl({
    this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.user_role_id,
    this.user_role_name,
  });

  factory _$UserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? email;
  @override
  final int? user_role_id;
  @override
  final String? user_role_name;

  @override
  String toString() {
    return 'UserDTO(id: $id, first_name: $first_name, last_name: $last_name, email: $email, user_role_id: $user_role_id, user_role_name: $user_role_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.user_role_id, user_role_id) ||
                other.user_role_id == user_role_id) &&
            (identical(other.user_role_name, user_role_name) ||
                other.user_role_name == user_role_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    first_name,
    last_name,
    email,
    user_role_id,
    user_role_name,
  );

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      __$$UserDTOImplCopyWithImpl<_$UserDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOImplToJson(this);
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO({
    final int? id,
    final String? first_name,
    final String? last_name,
    final String? email,
    final int? user_role_id,
    final String? user_role_name,
  }) = _$UserDTOImpl;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$UserDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get email;
  @override
  int? get user_role_id;
  @override
  String? get user_role_name;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
