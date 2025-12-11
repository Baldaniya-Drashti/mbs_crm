// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DynamicFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formId) loadForm,
    required TResult Function(Map<String, dynamic> values) submitForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formId)? loadForm,
    TResult? Function(Map<String, dynamic> values)? submitForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formId)? loadForm,
    TResult Function(Map<String, dynamic> values)? submitForm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(SubmitForm value) submitForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(SubmitForm value)? submitForm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormEventCopyWith<$Res> {
  factory $DynamicFormEventCopyWith(
    DynamicFormEvent value,
    $Res Function(DynamicFormEvent) then,
  ) = _$DynamicFormEventCopyWithImpl<$Res, DynamicFormEvent>;
}

/// @nodoc
class _$DynamicFormEventCopyWithImpl<$Res, $Val extends DynamicFormEvent>
    implements $DynamicFormEventCopyWith<$Res> {
  _$DynamicFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFormImplCopyWith<$Res> {
  factory _$$LoadFormImplCopyWith(
    _$LoadFormImpl value,
    $Res Function(_$LoadFormImpl) then,
  ) = __$$LoadFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String formId});
}

/// @nodoc
class __$$LoadFormImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$LoadFormImpl>
    implements _$$LoadFormImplCopyWith<$Res> {
  __$$LoadFormImplCopyWithImpl(
    _$LoadFormImpl _value,
    $Res Function(_$LoadFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? formId = null}) {
    return _then(
      _$LoadFormImpl(
        null == formId
            ? _value.formId
            : formId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadFormImpl implements LoadForm {
  const _$LoadFormImpl(this.formId);

  @override
  final String formId;

  @override
  String toString() {
    return 'DynamicFormEvent.loadForm(formId: $formId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFormImpl &&
            (identical(other.formId, formId) || other.formId == formId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formId);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFormImplCopyWith<_$LoadFormImpl> get copyWith =>
      __$$LoadFormImplCopyWithImpl<_$LoadFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formId) loadForm,
    required TResult Function(Map<String, dynamic> values) submitForm,
  }) {
    return loadForm(formId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formId)? loadForm,
    TResult? Function(Map<String, dynamic> values)? submitForm,
  }) {
    return loadForm?.call(formId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formId)? loadForm,
    TResult Function(Map<String, dynamic> values)? submitForm,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(formId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(SubmitForm value) submitForm,
  }) {
    return loadForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(SubmitForm value)? submitForm,
  }) {
    return loadForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(this);
    }
    return orElse();
  }
}

abstract class LoadForm implements DynamicFormEvent {
  const factory LoadForm(final String formId) = _$LoadFormImpl;

  String get formId;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFormImplCopyWith<_$LoadFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFormImplCopyWith<$Res> {
  factory _$$SubmitFormImplCopyWith(
    _$SubmitFormImpl value,
    $Res Function(_$SubmitFormImpl) then,
  ) = __$$SubmitFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> values});
}

/// @nodoc
class __$$SubmitFormImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$SubmitFormImpl>
    implements _$$SubmitFormImplCopyWith<$Res> {
  __$$SubmitFormImplCopyWithImpl(
    _$SubmitFormImpl _value,
    $Res Function(_$SubmitFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = null}) {
    return _then(
      _$SubmitFormImpl(
        null == values
            ? _value._values
            : values // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFormImpl implements SubmitForm {
  const _$SubmitFormImpl(final Map<String, dynamic> values) : _values = values;

  final Map<String, dynamic> _values;
  @override
  Map<String, dynamic> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  @override
  String toString() {
    return 'DynamicFormEvent.submitForm(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFormImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFormImplCopyWith<_$SubmitFormImpl> get copyWith =>
      __$$SubmitFormImplCopyWithImpl<_$SubmitFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formId) loadForm,
    required TResult Function(Map<String, dynamic> values) submitForm,
  }) {
    return submitForm(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formId)? loadForm,
    TResult? Function(Map<String, dynamic> values)? submitForm,
  }) {
    return submitForm?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formId)? loadForm,
    TResult Function(Map<String, dynamic> values)? submitForm,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(SubmitForm value) submitForm,
  }) {
    return submitForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(SubmitForm value)? submitForm,
  }) {
    return submitForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(this);
    }
    return orElse();
  }
}

abstract class SubmitForm implements DynamicFormEvent {
  const factory SubmitForm(final Map<String, dynamic> values) =
      _$SubmitFormImpl;

  Map<String, dynamic> get values;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFormImplCopyWith<_$SubmitFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DynamicFormState {
  DynamicFormDTO? get schema => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicFormStateCopyWith<DynamicFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormStateCopyWith<$Res> {
  factory $DynamicFormStateCopyWith(
    DynamicFormState value,
    $Res Function(DynamicFormState) then,
  ) = _$DynamicFormStateCopyWithImpl<$Res, DynamicFormState>;
  @useResult
  $Res call({
    DynamicFormDTO? schema,
    bool isLoading,
    bool isSubmitting,
    bool success,
    String? errorMessage,
  });

  $DynamicFormDTOCopyWith<$Res>? get schema;
}

/// @nodoc
class _$DynamicFormStateCopyWithImpl<$Res, $Val extends DynamicFormState>
    implements $DynamicFormStateCopyWith<$Res> {
  _$DynamicFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schema = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            schema: freezed == schema
                ? _value.schema
                : schema // ignore: cast_nullable_to_non_nullable
                      as DynamicFormDTO?,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DynamicFormDTOCopyWith<$Res>? get schema {
    if (_value.schema == null) {
      return null;
    }

    return $DynamicFormDTOCopyWith<$Res>(_value.schema!, (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DynamicFormStateImplCopyWith<$Res>
    implements $DynamicFormStateCopyWith<$Res> {
  factory _$$DynamicFormStateImplCopyWith(
    _$DynamicFormStateImpl value,
    $Res Function(_$DynamicFormStateImpl) then,
  ) = __$$DynamicFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DynamicFormDTO? schema,
    bool isLoading,
    bool isSubmitting,
    bool success,
    String? errorMessage,
  });

  @override
  $DynamicFormDTOCopyWith<$Res>? get schema;
}

/// @nodoc
class __$$DynamicFormStateImplCopyWithImpl<$Res>
    extends _$DynamicFormStateCopyWithImpl<$Res, _$DynamicFormStateImpl>
    implements _$$DynamicFormStateImplCopyWith<$Res> {
  __$$DynamicFormStateImplCopyWithImpl(
    _$DynamicFormStateImpl _value,
    $Res Function(_$DynamicFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schema = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$DynamicFormStateImpl(
        schema: freezed == schema
            ? _value.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as DynamicFormDTO?,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DynamicFormStateImpl implements _DynamicFormState {
  const _$DynamicFormStateImpl({
    this.schema,
    this.isLoading = false,
    this.isSubmitting = false,
    this.success = false,
    this.errorMessage,
  });

  @override
  final DynamicFormDTO? schema;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool success;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DynamicFormState(schema: $schema, isLoading: $isLoading, isSubmitting: $isSubmitting, success: $success, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormStateImpl &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    schema,
    isLoading,
    isSubmitting,
    success,
    errorMessage,
  );

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      __$$DynamicFormStateImplCopyWithImpl<_$DynamicFormStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DynamicFormState implements DynamicFormState {
  const factory _DynamicFormState({
    final DynamicFormDTO? schema,
    final bool isLoading,
    final bool isSubmitting,
    final bool success,
    final String? errorMessage,
  }) = _$DynamicFormStateImpl;

  @override
  DynamicFormDTO? get schema;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get success;
  @override
  String? get errorMessage;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
