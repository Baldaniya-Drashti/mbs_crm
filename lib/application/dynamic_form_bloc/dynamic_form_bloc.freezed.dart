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
    required TResult Function(FormDTO form, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormDTO form, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormDTO form, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(SubmitForm value) submitForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
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
  $Res call({FormDTO form, int? id});

  $FormDTOCopyWith<$Res> get form;
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
  $Res call({Object? form = null, Object? id = freezed}) {
    return _then(
      _$LoadFormImpl(
        null == form
            ? _value.form
            : form // ignore: cast_nullable_to_non_nullable
                  as FormDTO,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormDTOCopyWith<$Res> get form {
    return $FormDTOCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc

class _$LoadFormImpl implements LoadForm {
  const _$LoadFormImpl(this.form, {this.id});

  @override
  final FormDTO form;
  @override
  final int? id;

  @override
  String toString() {
    return 'DynamicFormEvent.loadForm(form: $form, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFormImpl &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, id);

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
    required TResult Function(FormDTO form, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return loadForm(form, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormDTO form, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return loadForm?.call(form, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormDTO form, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(form, id);
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
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
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
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
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
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(this);
    }
    return orElse();
  }
}

abstract class LoadForm implements DynamicFormEvent {
  const factory LoadForm(final FormDTO form, {final int? id}) = _$LoadFormImpl;

  FormDTO get form;
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
    required TResult Function(FormDTO form, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return getFormDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormDTO form, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return getFormDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormDTO form, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
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
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
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
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
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
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
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
    required TResult Function(FormDTO form, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return submitForm(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormDTO form, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return submitForm?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormDTO form, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
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
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
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
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
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
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
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
    required TResult Function(FormDTO form, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return attachFileEvent(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormDTO form, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return attachFileEvent?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormDTO form, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
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
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
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
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
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
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
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
abstract class _$$OnDropDownChangedImplCopyWith<$Res> {
  factory _$$OnDropDownChangedImplCopyWith(
    _$OnDropDownChangedImpl value,
    $Res Function(_$OnDropDownChangedImpl) then,
  ) = __$$OnDropDownChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fieldKey, dynamic value});
}

/// @nodoc
class __$$OnDropDownChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$OnDropDownChangedImpl>
    implements _$$OnDropDownChangedImplCopyWith<$Res> {
  __$$OnDropDownChangedImplCopyWithImpl(
    _$OnDropDownChangedImpl _value,
    $Res Function(_$OnDropDownChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fieldKey = null, Object? value = freezed}) {
    return _then(
      _$OnDropDownChangedImpl(
        fieldKey: null == fieldKey
            ? _value.fieldKey
            : fieldKey // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc

class _$OnDropDownChangedImpl implements OnDropDownChanged {
  const _$OnDropDownChangedImpl({required this.fieldKey, required this.value});

  @override
  final String fieldKey;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'DynamicFormEvent.onDropDownChanged(fieldKey: $fieldKey, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDropDownChangedImpl &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    fieldKey,
    const DeepCollectionEquality().hash(value),
  );

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDropDownChangedImplCopyWith<_$OnDropDownChangedImpl> get copyWith =>
      __$$OnDropDownChangedImplCopyWithImpl<_$OnDropDownChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormDTO form, int? id) loadForm,
    required TResult Function(int id) getFormDetails,
    required TResult Function(Map<String, dynamic> values) submitForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return onDropDownChanged(fieldKey, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormDTO form, int? id)? loadForm,
    TResult? Function(int id)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? submitForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return onDropDownChanged?.call(fieldKey, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormDTO form, int? id)? loadForm,
    TResult Function(int id)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? submitForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (onDropDownChanged != null) {
      return onDropDownChanged(fieldKey, value);
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
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return onDropDownChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(SubmitForm value)? submitForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return onDropDownChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(SubmitForm value)? submitForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (onDropDownChanged != null) {
      return onDropDownChanged(this);
    }
    return orElse();
  }
}

abstract class OnDropDownChanged implements DynamicFormEvent {
  const factory OnDropDownChanged({
    required final String fieldKey,
    required final dynamic value,
  }) = _$OnDropDownChangedImpl;

  String get fieldKey;
  dynamic get value;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnDropDownChangedImplCopyWith<_$OnDropDownChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DynamicFormState {
  DynamicFormDTO? get schema => throw _privateConstructorUsedError;
  FormDTO? get selectedForm => throw _privateConstructorUsedError;
  int? get updateFormId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  int get rebuildTick => throw _privateConstructorUsedError;
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
    FormDTO? selectedForm,
    int? updateFormId,
    bool isLoading,
    bool isSubmitting,
    bool success,
    int rebuildTick,
    String? errorMessage,
    Map<String, List<AttachmentFileDTO>> attachmentCache,
  });

  $DynamicFormDTOCopyWith<$Res>? get schema;
  $FormDTOCopyWith<$Res>? get selectedForm;
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
    Object? selectedForm = freezed,
    Object? updateFormId = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? rebuildTick = null,
    Object? errorMessage = freezed,
    Object? attachmentCache = null,
  }) {
    return _then(
      _value.copyWith(
            schema: freezed == schema
                ? _value.schema
                : schema // ignore: cast_nullable_to_non_nullable
                      as DynamicFormDTO?,
            selectedForm: freezed == selectedForm
                ? _value.selectedForm
                : selectedForm // ignore: cast_nullable_to_non_nullable
                      as FormDTO?,
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
            rebuildTick: null == rebuildTick
                ? _value.rebuildTick
                : rebuildTick // ignore: cast_nullable_to_non_nullable
                      as int,
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

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormDTOCopyWith<$Res>? get selectedForm {
    if (_value.selectedForm == null) {
      return null;
    }

    return $FormDTOCopyWith<$Res>(_value.selectedForm!, (value) {
      return _then(_value.copyWith(selectedForm: value) as $Val);
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
    FormDTO? selectedForm,
    int? updateFormId,
    bool isLoading,
    bool isSubmitting,
    bool success,
    int rebuildTick,
    String? errorMessage,
    Map<String, List<AttachmentFileDTO>> attachmentCache,
  });

  @override
  $DynamicFormDTOCopyWith<$Res>? get schema;
  @override
  $FormDTOCopyWith<$Res>? get selectedForm;
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
    Object? selectedForm = freezed,
    Object? updateFormId = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? rebuildTick = null,
    Object? errorMessage = freezed,
    Object? attachmentCache = null,
  }) {
    return _then(
      _$DynamicFormStateImpl(
        schema: freezed == schema
            ? _value.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as DynamicFormDTO?,
        selectedForm: freezed == selectedForm
            ? _value.selectedForm
            : selectedForm // ignore: cast_nullable_to_non_nullable
                  as FormDTO?,
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
        rebuildTick: null == rebuildTick
            ? _value.rebuildTick
            : rebuildTick // ignore: cast_nullable_to_non_nullable
                  as int,
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
    this.selectedForm,
    this.updateFormId,
    this.isLoading = false,
    this.isSubmitting = false,
    this.success = false,
    this.rebuildTick = 0,
    this.errorMessage,
    final Map<String, List<AttachmentFileDTO>> attachmentCache = const {},
  }) : _attachmentCache = attachmentCache;

  @override
  final DynamicFormDTO? schema;
  @override
  final FormDTO? selectedForm;
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
  @JsonKey()
  final int rebuildTick;
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
    return 'DynamicFormState(schema: $schema, selectedForm: $selectedForm, updateFormId: $updateFormId, isLoading: $isLoading, isSubmitting: $isSubmitting, success: $success, rebuildTick: $rebuildTick, errorMessage: $errorMessage, attachmentCache: $attachmentCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormStateImpl &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.selectedForm, selectedForm) ||
                other.selectedForm == selectedForm) &&
            (identical(other.updateFormId, updateFormId) ||
                other.updateFormId == updateFormId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.rebuildTick, rebuildTick) ||
                other.rebuildTick == rebuildTick) &&
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
    selectedForm,
    updateFormId,
    isLoading,
    isSubmitting,
    success,
    rebuildTick,
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
    final FormDTO? selectedForm,
    final int? updateFormId,
    final bool isLoading,
    final bool isSubmitting,
    final bool success,
    final int rebuildTick,
    final String? errorMessage,
    final Map<String, List<AttachmentFileDTO>> attachmentCache,
  }) = _$DynamicFormStateImpl;

  @override
  DynamicFormDTO? get schema;
  @override
  FormDTO? get selectedForm;
  @override
  int? get updateFormId;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get success;
  @override
  int get rebuildTick;
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
