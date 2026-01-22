// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FormTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(int id) deleteFormEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(int id)? deleteFormEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(int id)? deleteFormEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(DeleteFormEvent value) deleteFormEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(DeleteFormEvent value)? deleteFormEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(DeleteFormEvent value)? deleteFormEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTabEventCopyWith<$Res> {
  factory $FormTabEventCopyWith(
    FormTabEvent value,
    $Res Function(FormTabEvent) then,
  ) = _$FormTabEventCopyWithImpl<$Res, FormTabEvent>;
}

/// @nodoc
class _$FormTabEventCopyWithImpl<$Res, $Val extends FormTabEvent>
    implements $FormTabEventCopyWith<$Res> {
  _$FormTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormTabEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$FormTabEventCopyWithImpl<$Res, _$GetFormsListImpl>
    implements _$$GetFormsListImplCopyWith<$Res> {
  __$$GetFormsListImplCopyWithImpl(
    _$GetFormsListImpl _value,
    $Res Function(_$GetFormsListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormTabEvent
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
    return 'FormTabEvent.getFormsList(isRefresh: $isRefresh)';
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

  /// Create a copy of FormTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFormsListImplCopyWith<_$GetFormsListImpl> get copyWith =>
      __$$GetFormsListImplCopyWithImpl<_$GetFormsListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(int id) deleteFormEvent,
  }) {
    return getFormsList(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(int id)? deleteFormEvent,
  }) {
    return getFormsList?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(int id)? deleteFormEvent,
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
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(DeleteFormEvent value) deleteFormEvent,
  }) {
    return getFormsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(DeleteFormEvent value)? deleteFormEvent,
  }) {
    return getFormsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(DeleteFormEvent value)? deleteFormEvent,
    required TResult orElse(),
  }) {
    if (getFormsList != null) {
      return getFormsList(this);
    }
    return orElse();
  }
}

abstract class GetFormsList implements FormTabEvent {
  const factory GetFormsList(final bool isRefresh) = _$GetFormsListImpl;

  bool get isRefresh;

  /// Create a copy of FormTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFormsListImplCopyWith<_$GetFormsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFormEventImplCopyWith<$Res> {
  factory _$$DeleteFormEventImplCopyWith(
    _$DeleteFormEventImpl value,
    $Res Function(_$DeleteFormEventImpl) then,
  ) = __$$DeleteFormEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteFormEventImplCopyWithImpl<$Res>
    extends _$FormTabEventCopyWithImpl<$Res, _$DeleteFormEventImpl>
    implements _$$DeleteFormEventImplCopyWith<$Res> {
  __$$DeleteFormEventImplCopyWithImpl(
    _$DeleteFormEventImpl _value,
    $Res Function(_$DeleteFormEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteFormEventImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFormEventImpl implements DeleteFormEvent {
  const _$DeleteFormEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FormTabEvent.deleteFormEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFormEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FormTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFormEventImplCopyWith<_$DeleteFormEventImpl> get copyWith =>
      __$$DeleteFormEventImplCopyWithImpl<_$DeleteFormEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) getFormsList,
    required TResult Function(int id) deleteFormEvent,
  }) {
    return deleteFormEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? getFormsList,
    TResult? Function(int id)? deleteFormEvent,
  }) {
    return deleteFormEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? getFormsList,
    TResult Function(int id)? deleteFormEvent,
    required TResult orElse(),
  }) {
    if (deleteFormEvent != null) {
      return deleteFormEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFormsList value) getFormsList,
    required TResult Function(DeleteFormEvent value) deleteFormEvent,
  }) {
    return deleteFormEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFormsList value)? getFormsList,
    TResult? Function(DeleteFormEvent value)? deleteFormEvent,
  }) {
    return deleteFormEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFormsList value)? getFormsList,
    TResult Function(DeleteFormEvent value)? deleteFormEvent,
    required TResult orElse(),
  }) {
    if (deleteFormEvent != null) {
      return deleteFormEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteFormEvent implements FormTabEvent {
  const factory DeleteFormEvent(final int id) = _$DeleteFormEventImpl;

  int get id;

  /// Create a copy of FormTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFormEventImplCopyWith<_$DeleteFormEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormTabState {
  List<HomeDTO> get formsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isErrorInAPI => throw _privateConstructorUsedError;
  bool get isNoDataFound => throw _privateConstructorUsedError;

  /// Create a copy of FormTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormTabStateCopyWith<FormTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTabStateCopyWith<$Res> {
  factory $FormTabStateCopyWith(
    FormTabState value,
    $Res Function(FormTabState) then,
  ) = _$FormTabStateCopyWithImpl<$Res, FormTabState>;
  @useResult
  $Res call({
    List<HomeDTO> formsList,
    bool isLoading,
    bool isSubmitting,
    bool isErrorInAPI,
    bool isNoDataFound,
  });
}

/// @nodoc
class _$FormTabStateCopyWithImpl<$Res, $Val extends FormTabState>
    implements $FormTabStateCopyWith<$Res> {
  _$FormTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formsList = null,
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
abstract class _$$FormTabStateImplCopyWith<$Res>
    implements $FormTabStateCopyWith<$Res> {
  factory _$$FormTabStateImplCopyWith(
    _$FormTabStateImpl value,
    $Res Function(_$FormTabStateImpl) then,
  ) = __$$FormTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<HomeDTO> formsList,
    bool isLoading,
    bool isSubmitting,
    bool isErrorInAPI,
    bool isNoDataFound,
  });
}

/// @nodoc
class __$$FormTabStateImplCopyWithImpl<$Res>
    extends _$FormTabStateCopyWithImpl<$Res, _$FormTabStateImpl>
    implements _$$FormTabStateImplCopyWith<$Res> {
  __$$FormTabStateImplCopyWithImpl(
    _$FormTabStateImpl _value,
    $Res Function(_$FormTabStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formsList = null,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? isErrorInAPI = null,
    Object? isNoDataFound = null,
  }) {
    return _then(
      _$FormTabStateImpl(
        formsList: null == formsList
            ? _value._formsList
            : formsList // ignore: cast_nullable_to_non_nullable
                  as List<HomeDTO>,
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

class _$FormTabStateImpl implements _FormTabState {
  _$FormTabStateImpl({
    required final List<HomeDTO> formsList,
    required this.isLoading,
    required this.isSubmitting,
    required this.isErrorInAPI,
    required this.isNoDataFound,
  }) : _formsList = formsList;

  final List<HomeDTO> _formsList;
  @override
  List<HomeDTO> get formsList {
    if (_formsList is EqualUnmodifiableListView) return _formsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsList);
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
    return 'FormTabState(formsList: $formsList, isLoading: $isLoading, isSubmitting: $isSubmitting, isErrorInAPI: $isErrorInAPI, isNoDataFound: $isNoDataFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTabStateImpl &&
            const DeepCollectionEquality().equals(
              other._formsList,
              _formsList,
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
    isLoading,
    isSubmitting,
    isErrorInAPI,
    isNoDataFound,
  );

  /// Create a copy of FormTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormTabStateImplCopyWith<_$FormTabStateImpl> get copyWith =>
      __$$FormTabStateImplCopyWithImpl<_$FormTabStateImpl>(this, _$identity);
}

abstract class _FormTabState implements FormTabState {
  factory _FormTabState({
    required final List<HomeDTO> formsList,
    required final bool isLoading,
    required final bool isSubmitting,
    required final bool isErrorInAPI,
    required final bool isNoDataFound,
  }) = _$FormTabStateImpl;

  @override
  List<HomeDTO> get formsList;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get isErrorInAPI;
  @override
  bool get isNoDataFound;

  /// Create a copy of FormTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormTabStateImplCopyWith<_$FormTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
