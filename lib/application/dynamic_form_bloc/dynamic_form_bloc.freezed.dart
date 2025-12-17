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
    required TResult Function(String formType, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formType, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formType, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(SubmitForm value) submitForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
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
  $Res call({String formType, int? id});
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
  $Res call({Object? formType = null, Object? id = freezed}) {
    return _then(
      _$LoadFormImpl(
        null == formType
            ? _value.formType
            : formType // ignore: cast_nullable_to_non_nullable
                  as String,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$LoadFormImpl implements LoadForm {
  const _$LoadFormImpl(this.formType, {this.id});

  @override
  final String formType;
  @override
  final int? id;

  @override
  String toString() {
    return 'DynamicFormEvent.loadForm(formType: $formType, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFormImpl &&
            (identical(other.formType, formType) ||
                other.formType == formType) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formType, id);

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
    required TResult Function(String formType, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
  }) {
    return loadForm(formType, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formType, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
  }) {
    return loadForm?.call(formType, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formType, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(formType, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(SubmitForm value) submitForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
  }) {
    return loadForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
  }) {
    return loadForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(this);
    }
    return orElse();
  }
}

abstract class LoadForm implements DynamicFormEvent {
  const factory LoadForm(final String formType, {final int? id}) =
      _$LoadFormImpl;

  String get formType;
  int? get id;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFormImplCopyWith<_$LoadFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFormDetailsImplCopyWith<$Res> {
  factory _$$GetFormDetailsImplCopyWith(
    _$GetFormDetailsImpl value,
    $Res Function(_$GetFormDetailsImpl) then,
  ) = __$$GetFormDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetFormDetailsImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$GetFormDetailsImpl>
    implements _$$GetFormDetailsImplCopyWith<$Res> {
  __$$GetFormDetailsImplCopyWithImpl(
    _$GetFormDetailsImpl _value,
    $Res Function(_$GetFormDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetFormDetailsImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetFormDetailsImpl implements GetFormDetails {
  const _$GetFormDetailsImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DynamicFormEvent.getFormDetails(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFormDetailsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFormDetailsImplCopyWith<_$GetFormDetailsImpl> get copyWith =>
      __$$GetFormDetailsImplCopyWithImpl<_$GetFormDetailsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formType, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
  }) {
    return getFormDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formType, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
  }) {
    return getFormDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formType, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    required TResult orElse(),
  }) {
    if (getFormDetails != null) {
      return getFormDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(SubmitForm value) submitForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
  }) {
    return getFormDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
  }) {
    return getFormDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    required TResult orElse(),
  }) {
    if (getFormDetails != null) {
      return getFormDetails(this);
    }
    return orElse();
  }
}

abstract class GetFormDetails implements DynamicFormEvent {
  const factory GetFormDetails(final int id) = _$GetFormDetailsImpl;

  int get id;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFormDetailsImplCopyWith<_$GetFormDetailsImpl> get copyWith =>
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
    required TResult Function(String formType, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
  }) {
    return submitForm(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formType, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
  }) {
    return submitForm?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formType, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
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
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(SubmitForm value) submitForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
  }) {
    return submitForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
  }) {
    return submitForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
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
abstract class _$$AttachFileEventImplCopyWith<$Res> {
  factory _$$AttachFileEventImplCopyWith(
    _$AttachFileEventImpl value,
    $Res Function(_$AttachFileEventImpl) then,
  ) = __$$AttachFileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFieldSchema field});

  $FormFieldSchemaCopyWith<$Res> get field;
}

/// @nodoc
class __$$AttachFileEventImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$AttachFileEventImpl>
    implements _$$AttachFileEventImplCopyWith<$Res> {
  __$$AttachFileEventImplCopyWithImpl(
    _$AttachFileEventImpl _value,
    $Res Function(_$AttachFileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field = null}) {
    return _then(
      _$AttachFileEventImpl(
        null == field
            ? _value.field
            : field // ignore: cast_nullable_to_non_nullable
                  as FormFieldSchema,
      ),
    );
  }

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormFieldSchemaCopyWith<$Res> get field {
    return $FormFieldSchemaCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value));
    });
  }
}

/// @nodoc

class _$AttachFileEventImpl implements AttachFileEvent {
  const _$AttachFileEventImpl(this.field);

  @override
  final FormFieldSchema field;

  @override
  String toString() {
    return 'DynamicFormEvent.attachFileEvent(field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachFileEventImpl &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachFileEventImplCopyWith<_$AttachFileEventImpl> get copyWith =>
      __$$AttachFileEventImplCopyWithImpl<_$AttachFileEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formType, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
  }) {
    return attachFileEvent(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formType, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
  }) {
    return attachFileEvent?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formType, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    required TResult orElse(),
  }) {
    if (attachFileEvent != null) {
      return attachFileEvent(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(SubmitForm value) submitForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
  }) {
    return attachFileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
  }) {
    return attachFileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    required TResult orElse(),
  }) {
    if (attachFileEvent != null) {
      return attachFileEvent(this);
    }
    return orElse();
  }
}

abstract class AttachFileEvent implements DynamicFormEvent {
  const factory AttachFileEvent(final FormFieldSchema field) =
      _$AttachFileEventImpl;

  FormFieldSchema get field;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachFileEventImplCopyWith<_$AttachFileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DynamicFormState {
  DynamicFormDTO? get schema => throw _privateConstructorUsedError;
  int? get updateFormId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, List<AttachmentFileDTO>> get attachmentCache =>
      throw _privateConstructorUsedError;

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
    int? updateFormId,
    bool isLoading,
    bool isSubmitting,
    bool success,
    String? errorMessage,
    Map<String, List<AttachmentFileDTO>> attachmentCache,
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
    Object? updateFormId = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? errorMessage = freezed,
    Object? attachmentCache = null,
  }) {
    return _then(
      _value.copyWith(
            schema: freezed == schema
                ? _value.schema
                : schema // ignore: cast_nullable_to_non_nullable
                      as DynamicFormDTO?,
            updateFormId: freezed == updateFormId
                ? _value.updateFormId
                : updateFormId // ignore: cast_nullable_to_non_nullable
                      as int?,
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
            attachmentCache: null == attachmentCache
                ? _value.attachmentCache
                : attachmentCache // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<AttachmentFileDTO>>,
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
    int? updateFormId,
    bool isLoading,
    bool isSubmitting,
    bool success,
    String? errorMessage,
    Map<String, List<AttachmentFileDTO>> attachmentCache,
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
    Object? updateFormId = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? errorMessage = freezed,
    Object? attachmentCache = null,
  }) {
    return _then(
      _$DynamicFormStateImpl(
        schema: freezed == schema
            ? _value.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as DynamicFormDTO?,
        updateFormId: freezed == updateFormId
            ? _value.updateFormId
            : updateFormId // ignore: cast_nullable_to_non_nullable
                  as int?,
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
        attachmentCache: null == attachmentCache
            ? _value._attachmentCache
            : attachmentCache // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<AttachmentFileDTO>>,
      ),
    );
  }
}

/// @nodoc

class _$DynamicFormStateImpl implements _DynamicFormState {
  const _$DynamicFormStateImpl({
    this.schema,
    this.updateFormId,
    this.isLoading = false,
    this.isSubmitting = false,
    this.success = false,
    this.errorMessage,
    final Map<String, List<AttachmentFileDTO>> attachmentCache = const {},
  }) : _attachmentCache = attachmentCache;

  @override
  final DynamicFormDTO? schema;
  @override
  final int? updateFormId;
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
  final Map<String, List<AttachmentFileDTO>> _attachmentCache;
  @override
  @JsonKey()
  Map<String, List<AttachmentFileDTO>> get attachmentCache {
    if (_attachmentCache is EqualUnmodifiableMapView) return _attachmentCache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attachmentCache);
  }

  @override
  String toString() {
    return 'DynamicFormState(schema: $schema, updateFormId: $updateFormId, isLoading: $isLoading, isSubmitting: $isSubmitting, success: $success, errorMessage: $errorMessage, attachmentCache: $attachmentCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormStateImpl &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.updateFormId, updateFormId) ||
                other.updateFormId == updateFormId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._attachmentCache,
              _attachmentCache,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    schema,
    updateFormId,
    isLoading,
    isSubmitting,
    success,
    errorMessage,
    const DeepCollectionEquality().hash(_attachmentCache),
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
    final int? updateFormId,
    final bool isLoading,
    final bool isSubmitting,
    final bool success,
    final String? errorMessage,
    final Map<String, List<AttachmentFileDTO>> attachmentCache,
  }) = _$DynamicFormStateImpl;

  @override
  DynamicFormDTO? get schema;
  @override
  int? get updateFormId;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get success;
  @override
  String? get errorMessage;
  @override
  Map<String, List<AttachmentFileDTO>> get attachmentCache;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
