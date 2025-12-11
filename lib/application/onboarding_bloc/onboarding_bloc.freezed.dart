// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedUser) setSelectedUser,
    required TResult Function() submitUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedUser)? setSelectedUser,
    TResult? Function()? submitUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedUser)? setSelectedUser,
    TResult Function()? submitUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedUser value) setSelectedUser,
    required TResult Function(SubmitUser value) submitUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetSelectedUser value)? setSelectedUser,
    TResult? Function(SubmitUser value)? submitUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedUser value)? setSelectedUser,
    TResult Function(SubmitUser value)? submitUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
    OnboardingEvent value,
    $Res Function(OnboardingEvent) then,
  ) = _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetSelectedUserImplCopyWith<$Res> {
  factory _$$SetSelectedUserImplCopyWith(
    _$SetSelectedUserImpl value,
    $Res Function(_$SetSelectedUserImpl) then,
  ) = __$$SetSelectedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedUser});
}

/// @nodoc
class __$$SetSelectedUserImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$SetSelectedUserImpl>
    implements _$$SetSelectedUserImplCopyWith<$Res> {
  __$$SetSelectedUserImplCopyWithImpl(
    _$SetSelectedUserImpl _value,
    $Res Function(_$SetSelectedUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedUser = null}) {
    return _then(
      _$SetSelectedUserImpl(
        null == selectedUser
            ? _value.selectedUser
            : selectedUser // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SetSelectedUserImpl implements SetSelectedUser {
  const _$SetSelectedUserImpl(this.selectedUser);

  @override
  final int selectedUser;

  @override
  String toString() {
    return 'OnboardingEvent.setSelectedUser(selectedUser: $selectedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedUserImpl &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUser);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedUserImplCopyWith<_$SetSelectedUserImpl> get copyWith =>
      __$$SetSelectedUserImplCopyWithImpl<_$SetSelectedUserImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedUser) setSelectedUser,
    required TResult Function() submitUser,
  }) {
    return setSelectedUser(selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedUser)? setSelectedUser,
    TResult? Function()? submitUser,
  }) {
    return setSelectedUser?.call(selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedUser)? setSelectedUser,
    TResult Function()? submitUser,
    required TResult orElse(),
  }) {
    if (setSelectedUser != null) {
      return setSelectedUser(selectedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedUser value) setSelectedUser,
    required TResult Function(SubmitUser value) submitUser,
  }) {
    return setSelectedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetSelectedUser value)? setSelectedUser,
    TResult? Function(SubmitUser value)? submitUser,
  }) {
    return setSelectedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedUser value)? setSelectedUser,
    TResult Function(SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (setSelectedUser != null) {
      return setSelectedUser(this);
    }
    return orElse();
  }
}

abstract class SetSelectedUser implements OnboardingEvent {
  const factory SetSelectedUser(final int selectedUser) = _$SetSelectedUserImpl;

  int get selectedUser;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSelectedUserImplCopyWith<_$SetSelectedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitUserImplCopyWith<$Res> {
  factory _$$SubmitUserImplCopyWith(
    _$SubmitUserImpl value,
    $Res Function(_$SubmitUserImpl) then,
  ) = __$$SubmitUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitUserImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$SubmitUserImpl>
    implements _$$SubmitUserImplCopyWith<$Res> {
  __$$SubmitUserImplCopyWithImpl(
    _$SubmitUserImpl _value,
    $Res Function(_$SubmitUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitUserImpl implements SubmitUser {
  const _$SubmitUserImpl();

  @override
  String toString() {
    return 'OnboardingEvent.submitUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedUser) setSelectedUser,
    required TResult Function() submitUser,
  }) {
    return submitUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedUser)? setSelectedUser,
    TResult? Function()? submitUser,
  }) {
    return submitUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedUser)? setSelectedUser,
    TResult Function()? submitUser,
    required TResult orElse(),
  }) {
    if (submitUser != null) {
      return submitUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedUser value) setSelectedUser,
    required TResult Function(SubmitUser value) submitUser,
  }) {
    return submitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetSelectedUser value)? setSelectedUser,
    TResult? Function(SubmitUser value)? submitUser,
  }) {
    return submitUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedUser value)? setSelectedUser,
    TResult Function(SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (submitUser != null) {
      return submitUser(this);
    }
    return orElse();
  }
}

abstract class SubmitUser implements OnboardingEvent {
  const factory SubmitUser() = _$SubmitUserImpl;
}

/// @nodoc
mixin _$OnboardingState {
  int get selectedUser => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
    OnboardingState value,
    $Res Function(OnboardingState) then,
  ) = _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({int selectedUser});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedUser = null}) {
    return _then(
      _value.copyWith(
            selectedUser: null == selectedUser
                ? _value.selectedUser
                : selectedUser // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$OnboardingStateImplCopyWith(
    _$OnboardingStateImpl value,
    $Res Function(_$OnboardingStateImpl) then,
  ) = __$$OnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedUser});
}

/// @nodoc
class __$$OnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingStateImpl>
    implements _$$OnboardingStateImplCopyWith<$Res> {
  __$$OnboardingStateImplCopyWithImpl(
    _$OnboardingStateImpl _value,
    $Res Function(_$OnboardingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedUser = null}) {
    return _then(
      _$OnboardingStateImpl(
        selectedUser: null == selectedUser
            ? _value.selectedUser
            : selectedUser // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$OnboardingStateImpl implements _OnboardingState {
  _$OnboardingStateImpl({required this.selectedUser});

  @override
  final int selectedUser;

  @override
  String toString() {
    return 'OnboardingState(selectedUser: $selectedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStateImpl &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUser);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      __$$OnboardingStateImplCopyWithImpl<_$OnboardingStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OnboardingState implements OnboardingState {
  factory _OnboardingState({required final int selectedUser}) =
      _$OnboardingStateImpl;

  @override
  int get selectedUser;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
