// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() rememberMeEvent,
    required TResult Function() loginPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? rememberMeEvent,
    TResult? Function()? loginPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? rememberMeEvent,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(RememberMeEvent value) rememberMeEvent,
    required TResult Function(LoginPressed value) loginPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(RememberMeEvent value)? rememberMeEvent,
    TResult? Function(LoginPressed value)? loginPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(RememberMeEvent value)? rememberMeEvent,
    TResult Function(LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
    SignInEvent value,
    $Res Function(SignInEvent) then,
  ) = _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$SignInEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
    _$EmailChangedImpl _value,
    $Res Function(_$EmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInEvent
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
    return 'SignInEvent.emailChanged(email: $email)';
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

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() rememberMeEvent,
    required TResult Function() loginPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? rememberMeEvent,
    TResult? Function()? loginPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? rememberMeEvent,
    TResult Function()? loginPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(RememberMeEvent value) rememberMeEvent,
    required TResult Function(LoginPressed value) loginPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(RememberMeEvent value)? rememberMeEvent,
    TResult? Function(LoginPressed value)? loginPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(RememberMeEvent value)? rememberMeEvent,
    TResult Function(LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
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
    extends _$SignInEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
    _$PasswordChangedImpl _value,
    $Res Function(_$PasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInEvent
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
    return 'SignInEvent.passwordChanged(password: $password)';
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

  /// Create a copy of SignInEvent
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() rememberMeEvent,
    required TResult Function() loginPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? rememberMeEvent,
    TResult? Function()? loginPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? rememberMeEvent,
    TResult Function()? loginPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(RememberMeEvent value) rememberMeEvent,
    required TResult Function(LoginPressed value) loginPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(RememberMeEvent value)? rememberMeEvent,
    TResult? Function(LoginPressed value)? loginPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(RememberMeEvent value)? rememberMeEvent,
    TResult Function(LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SignInEventCopyWithImpl<$Res, _$ObscureChangedImpl>
    implements _$$ObscureChangedImplCopyWith<$Res> {
  __$$ObscureChangedImplCopyWithImpl(
    _$ObscureChangedImpl _value,
    $Res Function(_$ObscureChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ObscureChangedImpl implements ObscureChanged {
  const _$ObscureChangedImpl();

  @override
  String toString() {
    return 'SignInEvent.obscureChanged()';
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() rememberMeEvent,
    required TResult Function() loginPressed,
  }) {
    return obscureChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? rememberMeEvent,
    TResult? Function()? loginPressed,
  }) {
    return obscureChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? rememberMeEvent,
    TResult Function()? loginPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(RememberMeEvent value) rememberMeEvent,
    required TResult Function(LoginPressed value) loginPressed,
  }) {
    return obscureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(RememberMeEvent value)? rememberMeEvent,
    TResult? Function(LoginPressed value)? loginPressed,
  }) {
    return obscureChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(RememberMeEvent value)? rememberMeEvent,
    TResult Function(LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(this);
    }
    return orElse();
  }
}

abstract class ObscureChanged implements SignInEvent {
  const factory ObscureChanged() = _$ObscureChangedImpl;
}

/// @nodoc
abstract class _$$RememberMeEventImplCopyWith<$Res> {
  factory _$$RememberMeEventImplCopyWith(
    _$RememberMeEventImpl value,
    $Res Function(_$RememberMeEventImpl) then,
  ) = __$$RememberMeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RememberMeEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$RememberMeEventImpl>
    implements _$$RememberMeEventImplCopyWith<$Res> {
  __$$RememberMeEventImplCopyWithImpl(
    _$RememberMeEventImpl _value,
    $Res Function(_$RememberMeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RememberMeEventImpl implements RememberMeEvent {
  const _$RememberMeEventImpl();

  @override
  String toString() {
    return 'SignInEvent.rememberMeEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RememberMeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() rememberMeEvent,
    required TResult Function() loginPressed,
  }) {
    return rememberMeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? rememberMeEvent,
    TResult? Function()? loginPressed,
  }) {
    return rememberMeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? rememberMeEvent,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    if (rememberMeEvent != null) {
      return rememberMeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(RememberMeEvent value) rememberMeEvent,
    required TResult Function(LoginPressed value) loginPressed,
  }) {
    return rememberMeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(RememberMeEvent value)? rememberMeEvent,
    TResult? Function(LoginPressed value)? loginPressed,
  }) {
    return rememberMeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(RememberMeEvent value)? rememberMeEvent,
    TResult Function(LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (rememberMeEvent != null) {
      return rememberMeEvent(this);
    }
    return orElse();
  }
}

abstract class RememberMeEvent implements SignInEvent {
  const factory RememberMeEvent() = _$RememberMeEventImpl;
}

/// @nodoc
abstract class _$$LoginPressedImplCopyWith<$Res> {
  factory _$$LoginPressedImplCopyWith(
    _$LoginPressedImpl value,
    $Res Function(_$LoginPressedImpl) then,
  ) = __$$LoginPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPressedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$LoginPressedImpl>
    implements _$$LoginPressedImplCopyWith<$Res> {
  __$$LoginPressedImplCopyWithImpl(
    _$LoginPressedImpl _value,
    $Res Function(_$LoginPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginPressedImpl implements LoginPressed {
  const _$LoginPressedImpl();

  @override
  String toString() {
    return 'SignInEvent.loginPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() rememberMeEvent,
    required TResult Function() loginPressed,
  }) {
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? rememberMeEvent,
    TResult? Function()? loginPressed,
  }) {
    return loginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? rememberMeEvent,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(RememberMeEvent value) rememberMeEvent,
    required TResult Function(LoginPressed value) loginPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(RememberMeEvent value)? rememberMeEvent,
    TResult? Function(LoginPressed value)? loginPressed,
  }) {
    return loginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(RememberMeEvent value)? rememberMeEvent,
    TResult Function(LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginPressed implements SignInEvent {
  const factory LoginPressed() = _$LoginPressedImpl;
}

/// @nodoc
mixin _$SignInState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
    SignInState value,
    $Res Function(SignInState) then,
  ) = _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({
    EmailAddress email,
    Password password,
    bool isObscure,
    bool isSubmitting,
    bool isLoading,
    bool rememberMe,
    bool showError,
  });
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? rememberMe = null,
    Object? showError = null,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as EmailAddress,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as Password,
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
            rememberMe: null == rememberMe
                ? _value.rememberMe
                : rememberMe // ignore: cast_nullable_to_non_nullable
                      as bool,
            showError: null == showError
                ? _value.showError
                : showError // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
    _$SignInStateImpl value,
    $Res Function(_$SignInStateImpl) then,
  ) = __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    EmailAddress email,
    Password password,
    bool isObscure,
    bool isSubmitting,
    bool isLoading,
    bool rememberMe,
    bool showError,
  });
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
    _$SignInStateImpl _value,
    $Res Function(_$SignInStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? rememberMe = null,
    Object? showError = null,
  }) {
    return _then(
      _$SignInStateImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as EmailAddress,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as Password,
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
        rememberMe: null == rememberMe
            ? _value.rememberMe
            : rememberMe // ignore: cast_nullable_to_non_nullable
                  as bool,
        showError: null == showError
            ? _value.showError
            : showError // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  _$SignInStateImpl({
    required this.email,
    required this.password,
    required this.isObscure,
    required this.isSubmitting,
    required this.isLoading,
    required this.rememberMe,
    required this.showError,
  });

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool isObscure;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final bool rememberMe;
  @override
  final bool showError;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, isObscure: $isObscure, isSubmitting: $isSubmitting, isLoading: $isLoading, rememberMe: $rememberMe, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    isObscure,
    isSubmitting,
    isLoading,
    rememberMe,
    showError,
  );

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  factory _SignInState({
    required final EmailAddress email,
    required final Password password,
    required final bool isObscure,
    required final bool isSubmitting,
    required final bool isLoading,
    required final bool rememberMe,
    required final bool showError,
  }) = _$SignInStateImpl;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  bool get isObscure;
  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  bool get rememberMe;
  @override
  bool get showError;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
