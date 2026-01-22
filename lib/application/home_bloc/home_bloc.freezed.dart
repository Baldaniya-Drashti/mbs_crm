// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAPIList,
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(bool isRefresh) getUsersList,
    required TResult Function(int id) deleteUser,
    required TResult Function(FormIdentifier form) deleteForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAPIList,
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(bool isRefresh)? getUsersList,
    TResult? Function(int id)? deleteUser,
    TResult? Function(FormIdentifier form)? deleteForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAPIList,
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(bool isRefresh)? getUsersList,
    TResult Function(int id)? deleteUser,
    TResult Function(FormIdentifier form)? deleteForm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAPIList value) getAPIList,
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(GetUsersList value) getUsersList,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteForm value) deleteForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAPIList value)? getAPIList,
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(GetUsersList value)? getUsersList,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteForm value)? deleteForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAPIList value)? getAPIList,
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(GetUsersList value)? getUsersList,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteForm value)? deleteForm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAPIListImplCopyWith<$Res> {
  factory _$$GetAPIListImplCopyWith(
    _$GetAPIListImpl value,
    $Res Function(_$GetAPIListImpl) then,
  ) = __$$GetAPIListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAPIListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAPIListImpl>
    implements _$$GetAPIListImplCopyWith<$Res> {
  __$$GetAPIListImplCopyWithImpl(
    _$GetAPIListImpl _value,
    $Res Function(_$GetAPIListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAPIListImpl implements GetAPIList {
  const _$GetAPIListImpl();

  @override
  String toString() {
    return 'HomeEvent.getAPIList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAPIListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAPIList,
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(bool isRefresh) getUsersList,
    required TResult Function(int id) deleteUser,
    required TResult Function(FormIdentifier form) deleteForm,
  }) {
    return getAPIList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAPIList,
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(bool isRefresh)? getUsersList,
    TResult? Function(int id)? deleteUser,
    TResult? Function(FormIdentifier form)? deleteForm,
  }) {
    return getAPIList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAPIList,
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(bool isRefresh)? getUsersList,
    TResult Function(int id)? deleteUser,
    TResult Function(FormIdentifier form)? deleteForm,
    required TResult orElse(),
  }) {
    if (getAPIList != null) {
      return getAPIList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAPIList value) getAPIList,
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(GetUsersList value) getUsersList,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteForm value) deleteForm,
  }) {
    return getAPIList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAPIList value)? getAPIList,
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(GetUsersList value)? getUsersList,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteForm value)? deleteForm,
  }) {
    return getAPIList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAPIList value)? getAPIList,
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(GetUsersList value)? getUsersList,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteForm value)? deleteForm,
    required TResult orElse(),
  }) {
    if (getAPIList != null) {
      return getAPIList(this);
    }
    return orElse();
  }
}

abstract class GetAPIList implements HomeEvent {
  const factory GetAPIList() = _$GetAPIListImpl;
}

/// @nodoc
abstract class _$$GetFormsListImplCopyWith<$Res> {
  factory _$$GetFormsListImplCopyWith(
    _$GetFormsListImpl value,
    $Res Function(_$GetFormsListImpl) then,
  ) = __$$GetFormsListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$GetFormsListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetFormsListImpl>
    implements _$$GetFormsListImplCopyWith<$Res> {
  __$$GetFormsListImplCopyWithImpl(
    _$GetFormsListImpl _value,
    $Res Function(_$GetFormsListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$GetFormsListImpl(
        null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$GetFormsListImpl implements GetFormsList {
  const _$GetFormsListImpl(this.isRefresh);

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'HomeEvent.getFormsList(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFormsListImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFormsListImplCopyWith<_$GetFormsListImpl> get copyWith =>
      __$$GetFormsListImplCopyWithImpl<_$GetFormsListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAPIList,
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(bool isRefresh) getUsersList,
    required TResult Function(int id) deleteUser,
    required TResult Function(FormIdentifier form) deleteForm,
  }) {
    return getFormsList(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAPIList,
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(bool isRefresh)? getUsersList,
    TResult? Function(int id)? deleteUser,
    TResult? Function(FormIdentifier form)? deleteForm,
  }) {
    return getFormsList?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAPIList,
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(bool isRefresh)? getUsersList,
    TResult Function(int id)? deleteUser,
    TResult Function(FormIdentifier form)? deleteForm,
    required TResult orElse(),
  }) {
    if (getFormsList != null) {
      return getFormsList(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAPIList value) getAPIList,
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(GetUsersList value) getUsersList,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteForm value) deleteForm,
  }) {
    return getFormsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAPIList value)? getAPIList,
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(GetUsersList value)? getUsersList,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteForm value)? deleteForm,
  }) {
    return getFormsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAPIList value)? getAPIList,
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(GetUsersList value)? getUsersList,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteForm value)? deleteForm,
    required TResult orElse(),
  }) {
    if (getFormsList != null) {
      return getFormsList(this);
    }
    return orElse();
  }
}

abstract class GetFormsList implements HomeEvent {
  const factory GetFormsList(final bool isRefresh) = _$GetFormsListImpl;

  bool get isRefresh;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFormsListImplCopyWith<_$GetFormsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersListImplCopyWith<$Res> {
  factory _$$GetUsersListImplCopyWith(
    _$GetUsersListImpl value,
    $Res Function(_$GetUsersListImpl) then,
  ) = __$$GetUsersListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$GetUsersListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetUsersListImpl>
    implements _$$GetUsersListImplCopyWith<$Res> {
  __$$GetUsersListImplCopyWithImpl(
    _$GetUsersListImpl _value,
    $Res Function(_$GetUsersListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$GetUsersListImpl(
        null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$GetUsersListImpl implements GetUsersList {
  const _$GetUsersListImpl(this.isRefresh);

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'HomeEvent.getUsersList(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersListImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersListImplCopyWith<_$GetUsersListImpl> get copyWith =>
      __$$GetUsersListImplCopyWithImpl<_$GetUsersListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAPIList,
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(bool isRefresh) getUsersList,
    required TResult Function(int id) deleteUser,
    required TResult Function(FormIdentifier form) deleteForm,
  }) {
    return getUsersList(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAPIList,
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(bool isRefresh)? getUsersList,
    TResult? Function(int id)? deleteUser,
    TResult? Function(FormIdentifier form)? deleteForm,
  }) {
    return getUsersList?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAPIList,
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(bool isRefresh)? getUsersList,
    TResult Function(int id)? deleteUser,
    TResult Function(FormIdentifier form)? deleteForm,
    required TResult orElse(),
  }) {
    if (getUsersList != null) {
      return getUsersList(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAPIList value) getAPIList,
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(GetUsersList value) getUsersList,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteForm value) deleteForm,
  }) {
    return getUsersList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAPIList value)? getAPIList,
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(GetUsersList value)? getUsersList,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteForm value)? deleteForm,
  }) {
    return getUsersList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAPIList value)? getAPIList,
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(GetUsersList value)? getUsersList,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteForm value)? deleteForm,
    required TResult orElse(),
  }) {
    if (getUsersList != null) {
      return getUsersList(this);
    }
    return orElse();
  }
}

abstract class GetUsersList implements HomeEvent {
  const factory GetUsersList(final bool isRefresh) = _$GetUsersListImpl;

  bool get isRefresh;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUsersListImplCopyWith<_$GetUsersListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
    _$DeleteUserImpl value,
    $Res Function(_$DeleteUserImpl) then,
  ) = __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
    _$DeleteUserImpl _value,
    $Res Function(_$DeleteUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteUserImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'HomeEvent.deleteUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAPIList,
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(bool isRefresh) getUsersList,
    required TResult Function(int id) deleteUser,
    required TResult Function(FormIdentifier form) deleteForm,
  }) {
    return deleteUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAPIList,
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(bool isRefresh)? getUsersList,
    TResult? Function(int id)? deleteUser,
    TResult? Function(FormIdentifier form)? deleteForm,
  }) {
    return deleteUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAPIList,
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(bool isRefresh)? getUsersList,
    TResult Function(int id)? deleteUser,
    TResult Function(FormIdentifier form)? deleteForm,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAPIList value) getAPIList,
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(GetUsersList value) getUsersList,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteForm value) deleteForm,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAPIList value)? getAPIList,
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(GetUsersList value)? getUsersList,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteForm value)? deleteForm,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAPIList value)? getAPIList,
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(GetUsersList value)? getUsersList,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteForm value)? deleteForm,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements HomeEvent {
  const factory DeleteUser(final int id) = _$DeleteUserImpl;

  int get id;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFormImplCopyWith<$Res> {
  factory _$$DeleteFormImplCopyWith(
    _$DeleteFormImpl value,
    $Res Function(_$DeleteFormImpl) then,
  ) = __$$DeleteFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormIdentifier form});
}

/// @nodoc
class __$$DeleteFormImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteFormImpl>
    implements _$$DeleteFormImplCopyWith<$Res> {
  __$$DeleteFormImplCopyWithImpl(
    _$DeleteFormImpl _value,
    $Res Function(_$DeleteFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? form = null}) {
    return _then(
      _$DeleteFormImpl(
        null == form
            ? _value.form
            : form // ignore: cast_nullable_to_non_nullable
                  as FormIdentifier,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFormImpl implements DeleteForm {
  const _$DeleteFormImpl(this.form);

  @override
  final FormIdentifier form;

  @override
  String toString() {
    return 'HomeEvent.deleteForm(form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFormImpl &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFormImplCopyWith<_$DeleteFormImpl> get copyWith =>
      __$$DeleteFormImplCopyWithImpl<_$DeleteFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAPIList,
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(bool isRefresh) getUsersList,
    required TResult Function(int id) deleteUser,
    required TResult Function(FormIdentifier form) deleteForm,
  }) {
    return deleteForm(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAPIList,
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(bool isRefresh)? getUsersList,
    TResult? Function(int id)? deleteUser,
    TResult? Function(FormIdentifier form)? deleteForm,
  }) {
    return deleteForm?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAPIList,
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(bool isRefresh)? getUsersList,
    TResult Function(int id)? deleteUser,
    TResult Function(FormIdentifier form)? deleteForm,
    required TResult orElse(),
  }) {
    if (deleteForm != null) {
      return deleteForm(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAPIList value) getAPIList,
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(GetUsersList value) getUsersList,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteForm value) deleteForm,
  }) {
    return deleteForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAPIList value)? getAPIList,
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(GetUsersList value)? getUsersList,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteForm value)? deleteForm,
  }) {
    return deleteForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAPIList value)? getAPIList,
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(GetUsersList value)? getUsersList,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteForm value)? deleteForm,
    required TResult orElse(),
  }) {
    if (deleteForm != null) {
      return deleteForm(this);
    }
    return orElse();
  }
}

abstract class DeleteForm implements HomeEvent {
  const factory DeleteForm(final FormIdentifier form) = _$DeleteFormImpl;

  FormIdentifier get form;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFormImplCopyWith<_$DeleteFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<HomeDTO> get formsList => throw _privateConstructorUsedError;
  List<UserDTO> get usersList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isErrorInAPI => throw _privateConstructorUsedError;
  bool get isNoDataFound => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    List<HomeDTO> formsList,
    List<UserDTO> usersList,
    bool isLoading,
    bool isSubmitting,
    bool isErrorInAPI,
    bool isNoDataFound,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formsList = null,
    Object? usersList = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
  }) {
    return _then(
      _value.copyWith(
            formsList: null == formsList
                ? _value.formsList
                : formsList // ignore: cast_nullable_to_non_nullable
                      as List<HomeDTO>,
            usersList: null == usersList
                ? _value.usersList
                : usersList // ignore: cast_nullable_to_non_nullable
                      as List<UserDTO>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isErrorInAPI: null == isErrorInAPI
                ? _value.isErrorInAPI
                : isErrorInAPI // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<HomeDTO> formsList,
    List<UserDTO> usersList,
    bool isLoading,
    bool isSubmitting,
    bool isErrorInAPI,
    bool isNoDataFound,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formsList = null,
    Object? usersList = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
  }) {
    return _then(
      _$HomeStateImpl(
        formsList: null == formsList
            ? _value._formsList
            : formsList // ignore: cast_nullable_to_non_nullable
                  as List<HomeDTO>,
        usersList: null == usersList
            ? _value._usersList
            : usersList // ignore: cast_nullable_to_non_nullable
                  as List<UserDTO>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isErrorInAPI: null == isErrorInAPI
            ? _value.isErrorInAPI
            : isErrorInAPI // ignore: cast_nullable_to_non_nullable
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

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl({
    required final List<HomeDTO> formsList,
    required final List<UserDTO> usersList,
    required this.isLoading,
    required this.isSubmitting,
    required this.isErrorInAPI,
    required this.isNoDataFound,
  }) : _formsList = formsList,
       _usersList = usersList;

  final List<HomeDTO> _formsList;
  @override
  List<HomeDTO> get formsList {
    if (_formsList is EqualUnmodifiableListView) return _formsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsList);
  }

  final List<UserDTO> _usersList;
  @override
  List<UserDTO> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  final bool isLoading;
  @override
  final bool isSubmitting;
  @override
  final bool isErrorInAPI;
  @override
  final bool isNoDataFound;

  @override
  String toString() {
    return 'HomeState(formsList: $formsList, usersList: $usersList, isLoading: $isLoading, isSubmitting: $isSubmitting, isErrorInAPI: $isErrorInAPI, isNoDataFound: $isNoDataFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(
              other._formsList,
              _formsList,
            ) &&
            const DeepCollectionEquality().equals(
              other._usersList,
              _usersList,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isErrorInAPI, isErrorInAPI) ||
                other.isErrorInAPI == isErrorInAPI) &&
            (identical(other.isNoDataFound, isNoDataFound) ||
                other.isNoDataFound == isNoDataFound));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_formsList),
    const DeepCollectionEquality().hash(_usersList),
    isLoading,
    isSubmitting,
    isErrorInAPI,
    isNoDataFound,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState({
    required final List<HomeDTO> formsList,
    required final List<UserDTO> usersList,
    required final bool isLoading,
    required final bool isSubmitting,
    required final bool isErrorInAPI,
    required final bool isNoDataFound,
  }) = _$HomeStateImpl;

  @override
  List<HomeDTO> get formsList;
  @override
  List<UserDTO> get usersList;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get isErrorInAPI;
  @override
  bool get isNoDataFound;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
