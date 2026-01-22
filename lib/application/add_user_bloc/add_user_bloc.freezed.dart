// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserEventCopyWith<$Res> {
  factory $AddUserEventCopyWith(
    AddUserEvent value,
    $Res Function(AddUserEvent) then,
  ) = _$AddUserEventCopyWithImpl<$Res, AddUserEvent>;
}

/// @nodoc
class _$AddUserEventCopyWithImpl<$Res, $Val extends AddUserEvent>
    implements $AddUserEventCopyWith<$Res> {
  _$AddUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
    _$GetUserImpl value,
    $Res Function(_$GetUserImpl) then,
  ) = __$$GetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? userId});
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
    _$GetUserImpl _value,
    $Res Function(_$GetUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = freezed}) {
    return _then(
      _$GetUserImpl(
        freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$GetUserImpl implements GetUser {
  const _$GetUserImpl(this.userId);

  @override
  final int? userId;

  @override
  String toString() {
    return 'AddUserEvent.getUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      __$$GetUserImplCopyWithImpl<_$GetUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return getUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return getUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements AddUserEvent {
  const factory GetUser(final int? userId) = _$GetUserImpl;

  int? get userId;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
    _$EmailChangedImpl value,
    $Res Function(_$EmailChangedImpl) then,
  ) = __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
    _$EmailChangedImpl _value,
    $Res Function(_$EmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$EmailChangedImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AddUserEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AddUserEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(
    _$FirstNameChangedImpl value,
    $Res Function(_$FirstNameChangedImpl) then,
  ) = __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(
    _$FirstNameChangedImpl _value,
    $Res Function(_$FirstNameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? firstName = null}) {
    return _then(
      _$FirstNameChangedImpl(
        null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'AddUserEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements AddUserEvent {
  const factory FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(
    _$LastNameChangedImpl value,
    $Res Function(_$LastNameChangedImpl) then,
  ) = __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
    _$LastNameChangedImpl _value,
    $Res Function(_$LastNameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lastName = null}) {
    return _then(
      _$LastNameChangedImpl(
        null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LastNameChangedImpl implements LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'AddUserEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements AddUserEvent {
  const factory LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(
    _$PasswordChangedImpl value,
    $Res Function(_$PasswordChangedImpl) then,
  ) = __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
    _$PasswordChangedImpl _value,
    $Res Function(_$PasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$PasswordChangedImpl(
        null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AddUserEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AddUserEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
    _$ConfirmPasswordChangedImpl value,
    $Res Function(_$ConfirmPasswordChangedImpl) then,
  ) = __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword, String password});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
    _$ConfirmPasswordChangedImpl _value,
    $Res Function(_$ConfirmPasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? confirmPassword = null, Object? password = null}) {
    return _then(
      _$ConfirmPasswordChangedImpl(
        null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword, this.password);

  @override
  final String confirmPassword;
  @override
  final String password;

  @override
  String toString() {
    return 'AddUserEvent.confirmPasswordChanged(confirmPassword: $confirmPassword, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword, password);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
  get copyWith =>
      __$$ConfirmPasswordChangedImplCopyWithImpl<_$ConfirmPasswordChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return confirmPasswordChanged(confirmPassword, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return confirmPasswordChanged?.call(confirmPassword, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements AddUserEvent {
  const factory ConfirmPasswordChanged(
    final String confirmPassword,
    final String password,
  ) = _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  String get password;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureChangedImplCopyWith<$Res> {
  factory _$$ObscureChangedImplCopyWith(
    _$ObscureChangedImpl value,
    $Res Function(_$ObscureChangedImpl) then,
  ) = __$$ObscureChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObscureChangedImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$ObscureChangedImpl>
    implements _$$ObscureChangedImplCopyWith<$Res> {
  __$$ObscureChangedImplCopyWithImpl(
    _$ObscureChangedImpl _value,
    $Res Function(_$ObscureChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ObscureChangedImpl implements ObscureChanged {
  const _$ObscureChangedImpl();

  @override
  String toString() {
    return 'AddUserEvent.obscureChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObscureChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return obscureChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return obscureChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return obscureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return obscureChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(this);
    }
    return orElse();
  }
}

abstract class ObscureChanged implements AddUserEvent {
  const factory ObscureChanged() = _$ObscureChangedImpl;
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
    _$AddUserImpl value,
    $Res Function(_$AddUserImpl) then,
  ) = __$$AddUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
    _$AddUserImpl _value,
    $Res Function(_$AddUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddUserImpl implements AddUser {
  const _$AddUserImpl();

  @override
  String toString() {
    return 'AddUserEvent.addUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return addUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return addUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class AddUser implements AddUserEvent {
  const factory AddUser() = _$AddUserImpl;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
    _$UpdateUserImpl value,
    $Res Function(_$UpdateUserImpl) then,
  ) = __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
    _$UpdateUserImpl _value,
    $Res Function(_$UpdateUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$UpdateUserImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UpdateUserImpl implements UpdateUser {
  const _$UpdateUserImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AddUserEvent.updateUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) getUser,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
    confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() addUser,
    required TResult Function(int id) updateUser,
  }) {
    return updateUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? getUser,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? addUser,
    TResult? Function(int id)? updateUser,
  }) {
    return updateUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? getUser,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
    confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? addUser,
    TResult Function(int id)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
    confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements AddUserEvent {
  const factory UpdateUser(final int id) = _$UpdateUserImpl;

  int get id;

  /// Create a copy of AddUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUserState {
  EmailAddress get email => throw _privateConstructorUsedError;
  InputEmptyOrNot get firstName => throw _privateConstructorUsedError;
  InputEmptyOrNot get lastName => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isNoDataFound => throw _privateConstructorUsedError;

  /// Create a copy of AddUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddUserStateCopyWith<AddUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserStateCopyWith<$Res> {
  factory $AddUserStateCopyWith(
    AddUserState value,
    $Res Function(AddUserState) then,
  ) = _$AddUserStateCopyWithImpl<$Res, AddUserState>;
  @useResult
  $Res call({
    EmailAddress email,
    InputEmptyOrNot firstName,
    InputEmptyOrNot lastName,
    Password password,
    ConfirmPassword confirmPassword,
    bool isObscure,
    bool isSubmitting,
    bool isLoading,
    bool showError,
    bool isNoDataFound,
  });
}

/// @nodoc
class _$AddUserStateCopyWithImpl<$Res, $Val extends AddUserState>
    implements $AddUserStateCopyWith<$Res> {
  _$AddUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? isNoDataFound = null,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as EmailAddress,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as InputEmptyOrNot,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as InputEmptyOrNot,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as Password,
            confirmPassword: null == confirmPassword
                ? _value.confirmPassword
                : confirmPassword // ignore: cast_nullable_to_non_nullable
                      as ConfirmPassword,
            isObscure: null == isObscure
                ? _value.isObscure
                : isObscure // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            showError: null == showError
                ? _value.showError
                : showError // ignore: cast_nullable_to_non_nullable
                      as bool,
            isNoDataFound: null == isNoDataFound
                ? _value.isNoDataFound
                : isNoDataFound // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddUserStateImplCopyWith<$Res>
    implements $AddUserStateCopyWith<$Res> {
  factory _$$AddUserStateImplCopyWith(
    _$AddUserStateImpl value,
    $Res Function(_$AddUserStateImpl) then,
  ) = __$$AddUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    EmailAddress email,
    InputEmptyOrNot firstName,
    InputEmptyOrNot lastName,
    Password password,
    ConfirmPassword confirmPassword,
    bool isObscure,
    bool isSubmitting,
    bool isLoading,
    bool showError,
    bool isNoDataFound,
  });
}

/// @nodoc
class __$$AddUserStateImplCopyWithImpl<$Res>
    extends _$AddUserStateCopyWithImpl<$Res, _$AddUserStateImpl>
    implements _$$AddUserStateImplCopyWith<$Res> {
  __$$AddUserStateImplCopyWithImpl(
    _$AddUserStateImpl _value,
    $Res Function(_$AddUserStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? isNoDataFound = null,
  }) {
    return _then(
      _$AddUserStateImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as EmailAddress,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as InputEmptyOrNot,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as InputEmptyOrNot,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as Password,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as ConfirmPassword,
        isObscure: null == isObscure
            ? _value.isObscure
            : isObscure // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        showError: null == showError
            ? _value.showError
            : showError // ignore: cast_nullable_to_non_nullable
                  as bool,
        isNoDataFound: null == isNoDataFound
            ? _value.isNoDataFound
            : isNoDataFound // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$AddUserStateImpl implements _AddUserState {
  _$AddUserStateImpl({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.confirmPassword,
    required this.isObscure,
    required this.isSubmitting,
    required this.isLoading,
    required this.showError,
    required this.isNoDataFound,
  });

  @override
  final EmailAddress email;
  @override
  final InputEmptyOrNot firstName;
  @override
  final InputEmptyOrNot lastName;
  @override
  final Password password;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final bool isObscure;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final bool isNoDataFound;

  @override
  String toString() {
    return 'AddUserState(email: $email, firstName: $firstName, lastName: $lastName, password: $password, confirmPassword: $confirmPassword, isObscure: $isObscure, isSubmitting: $isSubmitting, isLoading: $isLoading, showError: $showError, isNoDataFound: $isNoDataFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.isNoDataFound, isNoDataFound) ||
                other.isNoDataFound == isNoDataFound));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    firstName,
    lastName,
    password,
    confirmPassword,
    isObscure,
    isSubmitting,
    isLoading,
    showError,
    isNoDataFound,
  );

  /// Create a copy of AddUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserStateImplCopyWith<_$AddUserStateImpl> get copyWith =>
      __$$AddUserStateImplCopyWithImpl<_$AddUserStateImpl>(this, _$identity);
}

abstract class _AddUserState implements AddUserState {
  factory _AddUserState({
    required final EmailAddress email,
    required final InputEmptyOrNot firstName,
    required final InputEmptyOrNot lastName,
    required final Password password,
    required final ConfirmPassword confirmPassword,
    required final bool isObscure,
    required final bool isSubmitting,
    required final bool isLoading,
    required final bool showError,
    required final bool isNoDataFound,
  }) = _$AddUserStateImpl;

  @override
  EmailAddress get email;
  @override
  InputEmptyOrNot get firstName;
  @override
  InputEmptyOrNot get lastName;
  @override
  Password get password;
  @override
  ConfirmPassword get confirmPassword;
  @override
  bool get isObscure;
  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  bool get isNoDataFound;

  /// Create a copy of AddUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserStateImplCopyWith<_$AddUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
