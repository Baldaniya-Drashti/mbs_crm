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
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
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
  $Res call({String formSlug, FormIdentifier? formId});
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
  $Res call({Object? formSlug = null, Object? formId = freezed}) {
    return _then(
      _$LoadFormImpl(
        null == formSlug
            ? _value.formSlug
            : formSlug // ignore: cast_nullable_to_non_nullable
                  as String,
        formId: freezed == formId
            ? _value.formId
            : formId // ignore: cast_nullable_to_non_nullable
                  as FormIdentifier?,
      ),
    );
  }
}

/// @nodoc

class _$LoadFormImpl implements LoadForm {
  const _$LoadFormImpl(this.formSlug, {this.formId});

  @override
  final String formSlug;
  @override
  final FormIdentifier? formId;

  @override
  String toString() {
    return 'DynamicFormEvent.loadForm(formSlug: $formSlug, formId: $formId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFormImpl &&
            (identical(other.formSlug, formSlug) ||
                other.formSlug == formSlug) &&
            (identical(other.formId, formId) || other.formId == formId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formSlug, formId);

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
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return loadForm(formSlug, formId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return loadForm?.call(formSlug, formId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(formSlug, formId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return loadForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return loadForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
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
  const factory LoadForm(
    final String formSlug, {
    final FormIdentifier? formId,
  }) = _$LoadFormImpl;

  String get formSlug;
  FormIdentifier? get formId;

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
  $Res call({FormIdentifier formId});
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
  $Res call({Object? formId = null}) {
    return _then(
      _$GetFormDetailsImpl(
        null == formId
            ? _value.formId
            : formId // ignore: cast_nullable_to_non_nullable
                  as FormIdentifier,
      ),
    );
  }
}

/// @nodoc

class _$GetFormDetailsImpl implements GetFormDetails {
  const _$GetFormDetailsImpl(this.formId);

  @override
  final FormIdentifier formId;

  @override
  String toString() {
    return 'DynamicFormEvent.getFormDetails(formId: $formId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFormDetailsImpl &&
            (identical(other.formId, formId) || other.formId == formId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formId);

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
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return getFormDetails(formId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return getFormDetails?.call(formId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (getFormDetails != null) {
      return getFormDetails(formId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return getFormDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return getFormDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
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
  const factory GetFormDetails(final FormIdentifier formId) =
      _$GetFormDetailsImpl;

  FormIdentifier get formId;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFormDetailsImplCopyWith<_$GetFormDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateFormImplCopyWith<$Res> {
  factory _$$CreateFormImplCopyWith(
    _$CreateFormImpl value,
    $Res Function(_$CreateFormImpl) then,
  ) = __$$CreateFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> values});
}

/// @nodoc
class __$$CreateFormImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$CreateFormImpl>
    implements _$$CreateFormImplCopyWith<$Res> {
  __$$CreateFormImplCopyWithImpl(
    _$CreateFormImpl _value,
    $Res Function(_$CreateFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = null}) {
    return _then(
      _$CreateFormImpl(
        null == values
            ? _value._values
            : values // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$CreateFormImpl implements CreateForm {
  const _$CreateFormImpl(final Map<String, dynamic> values) : _values = values;

  final Map<String, dynamic> _values;
  @override
  Map<String, dynamic> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  @override
  String toString() {
    return 'DynamicFormEvent.createForm(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFormImpl &&
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
  _$$CreateFormImplCopyWith<_$CreateFormImpl> get copyWith =>
      __$$CreateFormImplCopyWithImpl<_$CreateFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return createForm(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return createForm?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (createForm != null) {
      return createForm(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return createForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return createForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (createForm != null) {
      return createForm(this);
    }
    return orElse();
  }
}

abstract class CreateForm implements DynamicFormEvent {
  const factory CreateForm(final Map<String, dynamic> values) =
      _$CreateFormImpl;

  Map<String, dynamic> get values;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFormImplCopyWith<_$CreateFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFormImplCopyWith<$Res> {
  factory _$$UpdateFormImplCopyWith(
    _$UpdateFormImpl value,
    $Res Function(_$UpdateFormImpl) then,
  ) = __$$UpdateFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormIdentifier formId, Map<String, dynamic> values});
}

/// @nodoc
class __$$UpdateFormImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$UpdateFormImpl>
    implements _$$UpdateFormImplCopyWith<$Res> {
  __$$UpdateFormImplCopyWithImpl(
    _$UpdateFormImpl _value,
    $Res Function(_$UpdateFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? formId = null, Object? values = null}) {
    return _then(
      _$UpdateFormImpl(
        formId: null == formId
            ? _value.formId
            : formId // ignore: cast_nullable_to_non_nullable
                  as FormIdentifier,
        values: null == values
            ? _value._values
            : values // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFormImpl implements UpdateForm {
  const _$UpdateFormImpl({
    required this.formId,
    required final Map<String, dynamic> values,
  }) : _values = values;

  @override
  final FormIdentifier formId;
  final Map<String, dynamic> _values;
  @override
  Map<String, dynamic> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  @override
  String toString() {
    return 'DynamicFormEvent.updateForm(formId: $formId, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFormImpl &&
            (identical(other.formId, formId) || other.formId == formId) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    formId,
    const DeepCollectionEquality().hash(_values),
  );

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFormImplCopyWith<_$UpdateFormImpl> get copyWith =>
      __$$UpdateFormImplCopyWithImpl<_$UpdateFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return updateForm(formId, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return updateForm?.call(formId, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (updateForm != null) {
      return updateForm(formId, values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return updateForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return updateForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (updateForm != null) {
      return updateForm(this);
    }
    return orElse();
  }
}

abstract class UpdateForm implements DynamicFormEvent {
  const factory UpdateForm({
    required final FormIdentifier formId,
    required final Map<String, dynamic> values,
  }) = _$UpdateFormImpl;

  FormIdentifier get formId;
  Map<String, dynamic> get values;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFormImplCopyWith<_$UpdateFormImpl> get copyWith =>
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
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return attachFileEvent(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return attachFileEvent?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
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
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return attachFileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return attachFileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
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
abstract class _$$InspectionGradeChangedImplCopyWith<$Res> {
  factory _$$InspectionGradeChangedImplCopyWith(
    _$InspectionGradeChangedImpl value,
    $Res Function(_$InspectionGradeChangedImpl) then,
  ) = __$$InspectionGradeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String grade});
}

/// @nodoc
class __$$InspectionGradeChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$InspectionGradeChangedImpl>
    implements _$$InspectionGradeChangedImplCopyWith<$Res> {
  __$$InspectionGradeChangedImplCopyWithImpl(
    _$InspectionGradeChangedImpl _value,
    $Res Function(_$InspectionGradeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? grade = null}) {
    return _then(
      _$InspectionGradeChangedImpl(
        null == grade
            ? _value.grade
            : grade // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$InspectionGradeChangedImpl implements InspectionGradeChanged {
  const _$InspectionGradeChangedImpl(this.grade);

  @override
  final String grade;

  @override
  String toString() {
    return 'DynamicFormEvent.inspectionGradeChanged(grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionGradeChangedImpl &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grade);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionGradeChangedImplCopyWith<_$InspectionGradeChangedImpl>
  get copyWith =>
      __$$InspectionGradeChangedImplCopyWithImpl<_$InspectionGradeChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return inspectionGradeChanged(grade);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return inspectionGradeChanged?.call(grade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (inspectionGradeChanged != null) {
      return inspectionGradeChanged(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadForm value) loadForm,
    required TResult Function(GetFormDetails value) getFormDetails,
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return inspectionGradeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return inspectionGradeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult Function(OnDropDownChanged value)? onDropDownChanged,
    required TResult orElse(),
  }) {
    if (inspectionGradeChanged != null) {
      return inspectionGradeChanged(this);
    }
    return orElse();
  }
}

abstract class InspectionGradeChanged implements DynamicFormEvent {
  const factory InspectionGradeChanged(final String grade) =
      _$InspectionGradeChangedImpl;

  String get grade;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionGradeChangedImplCopyWith<_$InspectionGradeChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(Map<String, dynamic> values) createForm,
    required TResult Function(
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(FormFieldSchema field) attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
  }) {
    return onDropDownChanged(fieldKey, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(Map<String, dynamic> values)? createForm,
    TResult? Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult? Function(FormFieldSchema field)? attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
  }) {
    return onDropDownChanged?.call(fieldKey, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(Map<String, dynamic> values)? createForm,
    TResult Function(FormIdentifier formId, Map<String, dynamic> values)?
    updateForm,
    TResult Function(FormFieldSchema field)? attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
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
    required TResult Function(CreateForm value) createForm,
    required TResult Function(UpdateForm value) updateForm,
    required TResult Function(AttachFileEvent value) attachFileEvent,
    required TResult Function(InspectionGradeChanged value)
    inspectionGradeChanged,
    required TResult Function(OnDropDownChanged value) onDropDownChanged,
  }) {
    return onDropDownChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadForm value)? loadForm,
    TResult? Function(GetFormDetails value)? getFormDetails,
    TResult? Function(CreateForm value)? createForm,
    TResult? Function(UpdateForm value)? updateForm,
    TResult? Function(AttachFileEvent value)? attachFileEvent,
    TResult? Function(InspectionGradeChanged value)? inspectionGradeChanged,
    TResult? Function(OnDropDownChanged value)? onDropDownChanged,
  }) {
    return onDropDownChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadForm value)? loadForm,
    TResult Function(GetFormDetails value)? getFormDetails,
    TResult Function(CreateForm value)? createForm,
    TResult Function(UpdateForm value)? updateForm,
    TResult Function(AttachFileEvent value)? attachFileEvent,
    TResult Function(InspectionGradeChanged value)? inspectionGradeChanged,
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
  HomeDTO? get existingForm => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  int get rebuildTick => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, List<AttachmentFileDTO>> get attachmentCache =>
      throw _privateConstructorUsedError;
  String? get selectedInspectionGrade => throw _privateConstructorUsedError;

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
    HomeDTO? existingForm,
    bool isLoading,
    bool isSubmitting,
    bool success,
    int rebuildTick,
    String? errorMessage,
    Map<String, List<AttachmentFileDTO>> attachmentCache,
    String? selectedInspectionGrade,
  });

  $DynamicFormDTOCopyWith<$Res>? get schema;
  $HomeDTOCopyWith<$Res>? get existingForm;
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
    Object? existingForm = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? rebuildTick = null,
    Object? errorMessage = freezed,
    Object? attachmentCache = null,
    Object? selectedInspectionGrade = freezed,
  }) {
    return _then(
      _value.copyWith(
            schema: freezed == schema
                ? _value.schema
                : schema // ignore: cast_nullable_to_non_nullable
                      as DynamicFormDTO?,
            existingForm: freezed == existingForm
                ? _value.existingForm
                : existingForm // ignore: cast_nullable_to_non_nullable
                      as HomeDTO?,
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
            selectedInspectionGrade: freezed == selectedInspectionGrade
                ? _value.selectedInspectionGrade
                : selectedInspectionGrade // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDTOCopyWith<$Res>? get existingForm {
    if (_value.existingForm == null) {
      return null;
    }

    return $HomeDTOCopyWith<$Res>(_value.existingForm!, (value) {
      return _then(_value.copyWith(existingForm: value) as $Val);
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
    HomeDTO? existingForm,
    bool isLoading,
    bool isSubmitting,
    bool success,
    int rebuildTick,
    String? errorMessage,
    Map<String, List<AttachmentFileDTO>> attachmentCache,
    String? selectedInspectionGrade,
  });

  @override
  $DynamicFormDTOCopyWith<$Res>? get schema;
  @override
  $HomeDTOCopyWith<$Res>? get existingForm;
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
    Object? existingForm = freezed,
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? success = null,
    Object? rebuildTick = null,
    Object? errorMessage = freezed,
    Object? attachmentCache = null,
    Object? selectedInspectionGrade = freezed,
  }) {
    return _then(
      _$DynamicFormStateImpl(
        schema: freezed == schema
            ? _value.schema
            : schema // ignore: cast_nullable_to_non_nullable
                  as DynamicFormDTO?,
        existingForm: freezed == existingForm
            ? _value.existingForm
            : existingForm // ignore: cast_nullable_to_non_nullable
                  as HomeDTO?,
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
        selectedInspectionGrade: freezed == selectedInspectionGrade
            ? _value.selectedInspectionGrade
            : selectedInspectionGrade // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DynamicFormStateImpl implements _DynamicFormState {
  const _$DynamicFormStateImpl({
    this.schema,
    this.existingForm,
    this.isLoading = false,
    this.isSubmitting = false,
    this.success = false,
    this.rebuildTick = 0,
    this.errorMessage,
    final Map<String, List<AttachmentFileDTO>> attachmentCache = const {},
    this.selectedInspectionGrade,
  }) : _attachmentCache = attachmentCache;

  @override
  final DynamicFormDTO? schema;
  @override
  final HomeDTO? existingForm;
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
  final String? selectedInspectionGrade;

  @override
  String toString() {
    return 'DynamicFormState(schema: $schema, existingForm: $existingForm, isLoading: $isLoading, isSubmitting: $isSubmitting, success: $success, rebuildTick: $rebuildTick, errorMessage: $errorMessage, attachmentCache: $attachmentCache, selectedInspectionGrade: $selectedInspectionGrade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormStateImpl &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.existingForm, existingForm) ||
                other.existingForm == existingForm) &&
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
            ) &&
            (identical(
                  other.selectedInspectionGrade,
                  selectedInspectionGrade,
                ) ||
                other.selectedInspectionGrade == selectedInspectionGrade));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    schema,
    existingForm,
    isLoading,
    isSubmitting,
    success,
    rebuildTick,
    errorMessage,
    const DeepCollectionEquality().hash(_attachmentCache),
    selectedInspectionGrade,
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
    final HomeDTO? existingForm,
    final bool isLoading,
    final bool isSubmitting,
    final bool success,
    final int rebuildTick,
    final String? errorMessage,
    final Map<String, List<AttachmentFileDTO>> attachmentCache,
    final String? selectedInspectionGrade,
  }) = _$DynamicFormStateImpl;

  @override
  DynamicFormDTO? get schema;
  @override
  HomeDTO? get existingForm;
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
  @override
  String? get selectedInspectionGrade;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
