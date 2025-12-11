// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccountDetailEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccountDetailEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccountDetailEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccountDetailEvent value)
    getAccountDetailEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAccountDetailEvent value)? getAccountDetailEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccountDetailEvent value)? getAccountDetailEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
    AccountEvent value,
    $Res Function(AccountEvent) then,
  ) = _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAccountDetailEventImplCopyWith<$Res> {
  factory _$$GetAccountDetailEventImplCopyWith(
    _$GetAccountDetailEventImpl value,
    $Res Function(_$GetAccountDetailEventImpl) then,
  ) = __$$GetAccountDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountDetailEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetAccountDetailEventImpl>
    implements _$$GetAccountDetailEventImplCopyWith<$Res> {
  __$$GetAccountDetailEventImplCopyWithImpl(
    _$GetAccountDetailEventImpl _value,
    $Res Function(_$GetAccountDetailEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAccountDetailEventImpl implements GetAccountDetailEvent {
  const _$GetAccountDetailEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getAccountDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccountDetailEvent,
  }) {
    return getAccountDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAccountDetailEvent,
  }) {
    return getAccountDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccountDetailEvent,
    required TResult orElse(),
  }) {
    if (getAccountDetailEvent != null) {
      return getAccountDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccountDetailEvent value)
    getAccountDetailEvent,
  }) {
    return getAccountDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAccountDetailEvent value)? getAccountDetailEvent,
  }) {
    return getAccountDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccountDetailEvent value)? getAccountDetailEvent,
    required TResult orElse(),
  }) {
    if (getAccountDetailEvent != null) {
      return getAccountDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetAccountDetailEvent implements AccountEvent {
  const factory GetAccountDetailEvent() = _$GetAccountDetailEventImpl;
}

/// @nodoc
mixin _$AccountState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
    AccountState value,
    $Res Function(AccountState) then,
  ) = _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({bool isSubmitting, bool showError});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isSubmitting = null, Object? showError = null}) {
    return _then(
      _value.copyWith(
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
    _$AccountStateImpl value,
    $Res Function(_$AccountStateImpl) then,
  ) = __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSubmitting, bool showError});
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
    _$AccountStateImpl _value,
    $Res Function(_$AccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isSubmitting = null, Object? showError = null}) {
    return _then(
      _$AccountStateImpl(
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
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

class _$AccountStateImpl implements _AccountState {
  _$AccountStateImpl({required this.isSubmitting, required this.showError});

  @override
  final bool isSubmitting;
  @override
  final bool showError;

  @override
  String toString() {
    return 'AccountState(isSubmitting: $isSubmitting, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, showError);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  factory _AccountState({
    required final bool isSubmitting,
    required final bool showError,
  }) = _$AccountStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get showError;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
