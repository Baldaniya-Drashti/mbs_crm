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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return loadForm(formSlug, formId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return loadForm?.call(formSlug, formId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return getFormDetails(formId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return getFormDetails?.call(formId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
  $Res call({BuildContext context, Map<String, dynamic> values});
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
  $Res call({Object? context = null, Object? values = null}) {
    return _then(
      _$CreateFormImpl(
        null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
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
  const _$CreateFormImpl(this.context, final Map<String, dynamic> values)
    : _values = values;

  @override
  final BuildContext context;
  final Map<String, dynamic> _values;
  @override
  Map<String, dynamic> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  @override
  String toString() {
    return 'DynamicFormEvent.createForm(context: $context, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFormImpl &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    context,
    const DeepCollectionEquality().hash(_values),
  );

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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return createForm(context, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return createForm?.call(context, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (createForm != null) {
      return createForm(context, values);
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (createForm != null) {
      return createForm(this);
    }
    return orElse();
  }
}

abstract class CreateForm implements DynamicFormEvent {
  const factory CreateForm(
    final BuildContext context,
    final Map<String, dynamic> values,
  ) = _$CreateFormImpl;

  BuildContext get context;
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
  $Res call({
    BuildContext context,
    FormIdentifier formId,
    Map<String, dynamic> values,
  });
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
  $Res call({
    Object? context = null,
    Object? formId = null,
    Object? values = null,
  }) {
    return _then(
      _$UpdateFormImpl(
        null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
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
  const _$UpdateFormImpl(
    this.context, {
    required this.formId,
    required final Map<String, dynamic> values,
  }) : _values = values;

  @override
  final BuildContext context;
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
    return 'DynamicFormEvent.updateForm(context: $context, formId: $formId, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFormImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    context,
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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return updateForm(context, formId, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return updateForm?.call(context, formId, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (updateForm != null) {
      return updateForm(context, formId, values);
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (updateForm != null) {
      return updateForm(this);
    }
    return orElse();
  }
}

abstract class UpdateForm implements DynamicFormEvent {
  const factory UpdateForm(
    final BuildContext context, {
    required final FormIdentifier formId,
    required final Map<String, dynamic> values,
  }) = _$UpdateFormImpl;

  BuildContext get context;
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
  $Res call({BuildContext context, FormFieldSchema field, bool isOnlyImages});

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
  $Res call({
    Object? context = null,
    Object? field = null,
    Object? isOnlyImages = null,
  }) {
    return _then(
      _$AttachFileEventImpl(
        null == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as BuildContext,
        field: null == field
            ? _value.field
            : field // ignore: cast_nullable_to_non_nullable
                  as FormFieldSchema,
        isOnlyImages: null == isOnlyImages
            ? _value.isOnlyImages
            : isOnlyImages // ignore: cast_nullable_to_non_nullable
                  as bool,
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
  const _$AttachFileEventImpl(
    this.context, {
    required this.field,
    this.isOnlyImages = true,
  });

  @override
  final BuildContext context;
  @override
  final FormFieldSchema field;
  @override
  @JsonKey()
  final bool isOnlyImages;

  @override
  String toString() {
    return 'DynamicFormEvent.attachFileEvent(context: $context, field: $field, isOnlyImages: $isOnlyImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachFileEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.isOnlyImages, isOnlyImages) ||
                other.isOnlyImages == isOnlyImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, field, isOnlyImages);

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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return attachFileEvent(context, field, isOnlyImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return attachFileEvent?.call(context, field, isOnlyImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (attachFileEvent != null) {
      return attachFileEvent(context, field, isOnlyImages);
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (attachFileEvent != null) {
      return attachFileEvent(this);
    }
    return orElse();
  }
}

abstract class AttachFileEvent implements DynamicFormEvent {
  const factory AttachFileEvent(
    final BuildContext context, {
    required final FormFieldSchema field,
    final bool isOnlyImages,
  }) = _$AttachFileEventImpl;

  BuildContext get context;
  FormFieldSchema get field;
  bool get isOnlyImages;

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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return inspectionGradeChanged(grade);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return inspectionGradeChanged?.call(grade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return onDropDownChanged(fieldKey, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return onDropDownChanged?.call(fieldKey, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
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
abstract class _$$DeleteAttachmentEventImplCopyWith<$Res> {
  factory _$$DeleteAttachmentEventImplCopyWith(
    _$DeleteAttachmentEventImpl value,
    $Res Function(_$DeleteAttachmentEventImpl) then,
  ) = __$$DeleteAttachmentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFileGroupDTO group, AttachmentFileDTO file});

  $FormFileGroupDTOCopyWith<$Res> get group;
  $AttachmentFileDTOCopyWith<$Res> get file;
}

/// @nodoc
class __$$DeleteAttachmentEventImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$DeleteAttachmentEventImpl>
    implements _$$DeleteAttachmentEventImplCopyWith<$Res> {
  __$$DeleteAttachmentEventImplCopyWithImpl(
    _$DeleteAttachmentEventImpl _value,
    $Res Function(_$DeleteAttachmentEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? group = null, Object? file = null}) {
    return _then(
      _$DeleteAttachmentEventImpl(
        group: null == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as FormFileGroupDTO,
        file: null == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as AttachmentFileDTO,
      ),
    );
  }

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormFileGroupDTOCopyWith<$Res> get group {
    return $FormFileGroupDTOCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentFileDTOCopyWith<$Res> get file {
    return $AttachmentFileDTOCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc

class _$DeleteAttachmentEventImpl implements DeleteAttachmentEvent {
  const _$DeleteAttachmentEventImpl({required this.group, required this.file});

  @override
  final FormFileGroupDTO group;
  @override
  final AttachmentFileDTO file;

  @override
  String toString() {
    return 'DynamicFormEvent.deleteAttachmentEvent(group: $group, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAttachmentEventImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group, file);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAttachmentEventImplCopyWith<_$DeleteAttachmentEventImpl>
  get copyWith =>
      __$$DeleteAttachmentEventImplCopyWithImpl<_$DeleteAttachmentEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formSlug, FormIdentifier? formId) loadForm,
    required TResult Function(FormIdentifier formId) getFormDetails,
    required TResult Function(BuildContext context, Map<String, dynamic> values)
    createForm,
    required TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )
    updateForm,
    required TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )
    attachFileEvent,
    required TResult Function(String grade) inspectionGradeChanged,
    required TResult Function(String fieldKey, dynamic value) onDropDownChanged,
    required TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)
    deleteAttachmentEvent,
  }) {
    return deleteAttachmentEvent(group, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult? Function(FormIdentifier formId)? getFormDetails,
    TResult? Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult? Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult? Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult? Function(String grade)? inspectionGradeChanged,
    TResult? Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult? Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
  }) {
    return deleteAttachmentEvent?.call(group, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formSlug, FormIdentifier? formId)? loadForm,
    TResult Function(FormIdentifier formId)? getFormDetails,
    TResult Function(BuildContext context, Map<String, dynamic> values)?
    createForm,
    TResult Function(
      BuildContext context,
      FormIdentifier formId,
      Map<String, dynamic> values,
    )?
    updateForm,
    TResult Function(
      BuildContext context,
      FormFieldSchema field,
      bool isOnlyImages,
    )?
    attachFileEvent,
    TResult Function(String grade)? inspectionGradeChanged,
    TResult Function(String fieldKey, dynamic value)? onDropDownChanged,
    TResult Function(FormFileGroupDTO group, AttachmentFileDTO file)?
    deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (deleteAttachmentEvent != null) {
      return deleteAttachmentEvent(group, file);
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
    required TResult Function(DeleteAttachmentEvent value)
    deleteAttachmentEvent,
  }) {
    return deleteAttachmentEvent(this);
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
    TResult? Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
  }) {
    return deleteAttachmentEvent?.call(this);
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
    TResult Function(DeleteAttachmentEvent value)? deleteAttachmentEvent,
    required TResult orElse(),
  }) {
    if (deleteAttachmentEvent != null) {
      return deleteAttachmentEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteAttachmentEvent implements DynamicFormEvent {
  const factory DeleteAttachmentEvent({
    required final FormFileGroupDTO group,
    required final AttachmentFileDTO file,
  }) = _$DeleteAttachmentEventImpl;

  FormFileGroupDTO get group;
  AttachmentFileDTO get file;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAttachmentEventImplCopyWith<_$DeleteAttachmentEventImpl>
  get copyWith => throw _privateConstructorUsedError;
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
  String? get selectedInspectionGrade => throw _privateConstructorUsedError;
  List<FormFileGroupDTO> get formFiles => throw _privateConstructorUsedError;
  List<int> get deletedFileIds => throw _privateConstructorUsedError;

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
    String? selectedInspectionGrade,
    List<FormFileGroupDTO> formFiles,
    List<int> deletedFileIds,
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
    Object? selectedInspectionGrade = freezed,
    Object? formFiles = null,
    Object? deletedFileIds = null,
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
            selectedInspectionGrade: freezed == selectedInspectionGrade
                ? _value.selectedInspectionGrade
                : selectedInspectionGrade // ignore: cast_nullable_to_non_nullable
                      as String?,
            formFiles: null == formFiles
                ? _value.formFiles
                : formFiles // ignore: cast_nullable_to_non_nullable
                      as List<FormFileGroupDTO>,
            deletedFileIds: null == deletedFileIds
                ? _value.deletedFileIds
                : deletedFileIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
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
    String? selectedInspectionGrade,
    List<FormFileGroupDTO> formFiles,
    List<int> deletedFileIds,
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
    Object? selectedInspectionGrade = freezed,
    Object? formFiles = null,
    Object? deletedFileIds = null,
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
        selectedInspectionGrade: freezed == selectedInspectionGrade
            ? _value.selectedInspectionGrade
            : selectedInspectionGrade // ignore: cast_nullable_to_non_nullable
                  as String?,
        formFiles: null == formFiles
            ? _value._formFiles
            : formFiles // ignore: cast_nullable_to_non_nullable
                  as List<FormFileGroupDTO>,
        deletedFileIds: null == deletedFileIds
            ? _value._deletedFileIds
            : deletedFileIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
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
    this.selectedInspectionGrade,
    final List<FormFileGroupDTO> formFiles = const [],
    final List<int> deletedFileIds = const [],
  }) : _formFiles = formFiles,
       _deletedFileIds = deletedFileIds;

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
  @override
  final String? selectedInspectionGrade;
  final List<FormFileGroupDTO> _formFiles;
  @override
  @JsonKey()
  List<FormFileGroupDTO> get formFiles {
    if (_formFiles is EqualUnmodifiableListView) return _formFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formFiles);
  }

  final List<int> _deletedFileIds;
  @override
  @JsonKey()
  List<int> get deletedFileIds {
    if (_deletedFileIds is EqualUnmodifiableListView) return _deletedFileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deletedFileIds);
  }

  @override
  String toString() {
    return 'DynamicFormState(schema: $schema, existingForm: $existingForm, isLoading: $isLoading, isSubmitting: $isSubmitting, success: $success, rebuildTick: $rebuildTick, errorMessage: $errorMessage, selectedInspectionGrade: $selectedInspectionGrade, formFiles: $formFiles, deletedFileIds: $deletedFileIds)';
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
            (identical(
                  other.selectedInspectionGrade,
                  selectedInspectionGrade,
                ) ||
                other.selectedInspectionGrade == selectedInspectionGrade) &&
            const DeepCollectionEquality().equals(
              other._formFiles,
              _formFiles,
            ) &&
            const DeepCollectionEquality().equals(
              other._deletedFileIds,
              _deletedFileIds,
            ));
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
    selectedInspectionGrade,
    const DeepCollectionEquality().hash(_formFiles),
    const DeepCollectionEquality().hash(_deletedFileIds),
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
    final String? selectedInspectionGrade,
    final List<FormFileGroupDTO> formFiles,
    final List<int> deletedFileIds,
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
  String? get selectedInspectionGrade;
  @override
  List<FormFileGroupDTO> get formFiles;
  @override
  List<int> get deletedFileIds;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
