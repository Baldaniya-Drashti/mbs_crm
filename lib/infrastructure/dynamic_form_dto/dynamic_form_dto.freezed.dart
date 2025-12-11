// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DynamicFormDTO _$DynamicFormDTOFromJson(Map<String, dynamic> json) {
  return _DynamicFormDTO.fromJson(json);
}

/// @nodoc
mixin _$DynamicFormDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<FormSection>? get sections => throw _privateConstructorUsedError;

  /// Serializes this DynamicFormDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicFormDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicFormDTOCopyWith<DynamicFormDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormDTOCopyWith<$Res> {
  factory $DynamicFormDTOCopyWith(
    DynamicFormDTO value,
    $Res Function(DynamicFormDTO) then,
  ) = _$DynamicFormDTOCopyWithImpl<$Res, DynamicFormDTO>;
  @useResult
  $Res call({int? id, String? title, List<FormSection>? sections});
}

/// @nodoc
class _$DynamicFormDTOCopyWithImpl<$Res, $Val extends DynamicFormDTO>
    implements $DynamicFormDTOCopyWith<$Res> {
  _$DynamicFormDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicFormDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? sections = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            sections: freezed == sections
                ? _value.sections
                : sections // ignore: cast_nullable_to_non_nullable
                      as List<FormSection>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DynamicFormDTOImplCopyWith<$Res>
    implements $DynamicFormDTOCopyWith<$Res> {
  factory _$$DynamicFormDTOImplCopyWith(
    _$DynamicFormDTOImpl value,
    $Res Function(_$DynamicFormDTOImpl) then,
  ) = __$$DynamicFormDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, List<FormSection>? sections});
}

/// @nodoc
class __$$DynamicFormDTOImplCopyWithImpl<$Res>
    extends _$DynamicFormDTOCopyWithImpl<$Res, _$DynamicFormDTOImpl>
    implements _$$DynamicFormDTOImplCopyWith<$Res> {
  __$$DynamicFormDTOImplCopyWithImpl(
    _$DynamicFormDTOImpl _value,
    $Res Function(_$DynamicFormDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicFormDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? sections = freezed,
  }) {
    return _then(
      _$DynamicFormDTOImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        sections: freezed == sections
            ? _value._sections
            : sections // ignore: cast_nullable_to_non_nullable
                  as List<FormSection>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicFormDTOImpl implements _DynamicFormDTO {
  const _$DynamicFormDTOImpl({
    this.id,
    this.title,
    final List<FormSection>? sections,
  }) : _sections = sections;

  factory _$DynamicFormDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicFormDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  final List<FormSection>? _sections;
  @override
  List<FormSection>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DynamicFormDTO(id: $id, title: $title, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    const DeepCollectionEquality().hash(_sections),
  );

  /// Create a copy of DynamicFormDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormDTOImplCopyWith<_$DynamicFormDTOImpl> get copyWith =>
      __$$DynamicFormDTOImplCopyWithImpl<_$DynamicFormDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicFormDTOImplToJson(this);
  }
}

abstract class _DynamicFormDTO implements DynamicFormDTO {
  const factory _DynamicFormDTO({
    final int? id,
    final String? title,
    final List<FormSection>? sections,
  }) = _$DynamicFormDTOImpl;

  factory _DynamicFormDTO.fromJson(Map<String, dynamic> json) =
      _$DynamicFormDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  List<FormSection>? get sections;

  /// Create a copy of DynamicFormDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormDTOImplCopyWith<_$DynamicFormDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormSection _$FormSectionFromJson(Map<String, dynamic> json) {
  return _FormSection.fromJson(json);
}

/// @nodoc
mixin _$FormSection {
  String? get title => throw _privateConstructorUsedError;
  List<FormFieldSchema>? get fields => throw _privateConstructorUsedError;

  /// Serializes this FormSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormSectionCopyWith<FormSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSectionCopyWith<$Res> {
  factory $FormSectionCopyWith(
    FormSection value,
    $Res Function(FormSection) then,
  ) = _$FormSectionCopyWithImpl<$Res, FormSection>;
  @useResult
  $Res call({String? title, List<FormFieldSchema>? fields});
}

/// @nodoc
class _$FormSectionCopyWithImpl<$Res, $Val extends FormSection>
    implements $FormSectionCopyWith<$Res> {
  _$FormSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed, Object? fields = freezed}) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            fields: freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                      as List<FormFieldSchema>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FormSectionImplCopyWith<$Res>
    implements $FormSectionCopyWith<$Res> {
  factory _$$FormSectionImplCopyWith(
    _$FormSectionImpl value,
    $Res Function(_$FormSectionImpl) then,
  ) = __$$FormSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<FormFieldSchema>? fields});
}

/// @nodoc
class __$$FormSectionImplCopyWithImpl<$Res>
    extends _$FormSectionCopyWithImpl<$Res, _$FormSectionImpl>
    implements _$$FormSectionImplCopyWith<$Res> {
  __$$FormSectionImplCopyWithImpl(
    _$FormSectionImpl _value,
    $Res Function(_$FormSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed, Object? fields = freezed}) {
    return _then(
      _$FormSectionImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        fields: freezed == fields
            ? _value._fields
            : fields // ignore: cast_nullable_to_non_nullable
                  as List<FormFieldSchema>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSectionImpl implements _FormSection {
  const _$FormSectionImpl({this.title, final List<FormFieldSchema>? fields})
    : _fields = fields;

  factory _$FormSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSectionImplFromJson(json);

  @override
  final String? title;
  final List<FormFieldSchema>? _fields;
  @override
  List<FormFieldSchema>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormSection(title: $title, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    const DeepCollectionEquality().hash(_fields),
  );

  /// Create a copy of FormSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSectionImplCopyWith<_$FormSectionImpl> get copyWith =>
      __$$FormSectionImplCopyWithImpl<_$FormSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSectionImplToJson(this);
  }
}

abstract class _FormSection implements FormSection {
  const factory _FormSection({
    final String? title,
    final List<FormFieldSchema>? fields,
  }) = _$FormSectionImpl;

  factory _FormSection.fromJson(Map<String, dynamic> json) =
      _$FormSectionImpl.fromJson;

  @override
  String? get title;
  @override
  List<FormFieldSchema>? get fields;

  /// Create a copy of FormSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormSectionImplCopyWith<_$FormSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormFieldSchema _$FormFieldSchemaFromJson(Map<String, dynamic> json) {
  return _FormFieldSchema.fromJson(json);
}

/// @nodoc
mixin _$FormFieldSchema {
  String? get label => throw _privateConstructorUsedError;
  String? get initialValue => throw _privateConstructorUsedError;
  String? get type =>
      throw _privateConstructorUsedError; // text, number, dropdown, signature, table, radio
  bool get required => throw _privateConstructorUsedError;
  bool get readOnly => throw _privateConstructorUsedError;
  List<String>? get options => throw _privateConstructorUsedError;
  int? get rowCount => throw _privateConstructorUsedError; // dropdown
  List<TableColumnSchema>? get tablecolumn =>
      throw _privateConstructorUsedError;

  /// Serializes this FormFieldSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormFieldSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFieldSchemaCopyWith<FormFieldSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldSchemaCopyWith<$Res> {
  factory $FormFieldSchemaCopyWith(
    FormFieldSchema value,
    $Res Function(FormFieldSchema) then,
  ) = _$FormFieldSchemaCopyWithImpl<$Res, FormFieldSchema>;
  @useResult
  $Res call({
    String? label,
    String? initialValue,
    String? type,
    bool required,
    bool readOnly,
    List<String>? options,
    int? rowCount,
    List<TableColumnSchema>? tablecolumn,
  });
}

/// @nodoc
class _$FormFieldSchemaCopyWithImpl<$Res, $Val extends FormFieldSchema>
    implements $FormFieldSchemaCopyWith<$Res> {
  _$FormFieldSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFieldSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? initialValue = freezed,
    Object? type = freezed,
    Object? required = null,
    Object? readOnly = null,
    Object? options = freezed,
    Object? rowCount = freezed,
    Object? tablecolumn = freezed,
  }) {
    return _then(
      _value.copyWith(
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
            initialValue: freezed == initialValue
                ? _value.initialValue
                : initialValue // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            required: null == required
                ? _value.required
                : required // ignore: cast_nullable_to_non_nullable
                      as bool,
            readOnly: null == readOnly
                ? _value.readOnly
                : readOnly // ignore: cast_nullable_to_non_nullable
                      as bool,
            options: freezed == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            rowCount: freezed == rowCount
                ? _value.rowCount
                : rowCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            tablecolumn: freezed == tablecolumn
                ? _value.tablecolumn
                : tablecolumn // ignore: cast_nullable_to_non_nullable
                      as List<TableColumnSchema>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FormFieldSchemaImplCopyWith<$Res>
    implements $FormFieldSchemaCopyWith<$Res> {
  factory _$$FormFieldSchemaImplCopyWith(
    _$FormFieldSchemaImpl value,
    $Res Function(_$FormFieldSchemaImpl) then,
  ) = __$$FormFieldSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? label,
    String? initialValue,
    String? type,
    bool required,
    bool readOnly,
    List<String>? options,
    int? rowCount,
    List<TableColumnSchema>? tablecolumn,
  });
}

/// @nodoc
class __$$FormFieldSchemaImplCopyWithImpl<$Res>
    extends _$FormFieldSchemaCopyWithImpl<$Res, _$FormFieldSchemaImpl>
    implements _$$FormFieldSchemaImplCopyWith<$Res> {
  __$$FormFieldSchemaImplCopyWithImpl(
    _$FormFieldSchemaImpl _value,
    $Res Function(_$FormFieldSchemaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FormFieldSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? initialValue = freezed,
    Object? type = freezed,
    Object? required = null,
    Object? readOnly = null,
    Object? options = freezed,
    Object? rowCount = freezed,
    Object? tablecolumn = freezed,
  }) {
    return _then(
      _$FormFieldSchemaImpl(
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
        initialValue: freezed == initialValue
            ? _value.initialValue
            : initialValue // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        required: null == required
            ? _value.required
            : required // ignore: cast_nullable_to_non_nullable
                  as bool,
        readOnly: null == readOnly
            ? _value.readOnly
            : readOnly // ignore: cast_nullable_to_non_nullable
                  as bool,
        options: freezed == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        rowCount: freezed == rowCount
            ? _value.rowCount
            : rowCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        tablecolumn: freezed == tablecolumn
            ? _value._tablecolumn
            : tablecolumn // ignore: cast_nullable_to_non_nullable
                  as List<TableColumnSchema>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FormFieldSchemaImpl implements _FormFieldSchema {
  const _$FormFieldSchemaImpl({
    this.label,
    this.initialValue,
    this.type,
    this.required = false,
    this.readOnly = false,
    final List<String>? options,
    this.rowCount,
    final List<TableColumnSchema>? tablecolumn,
  }) : _options = options,
       _tablecolumn = tablecolumn;

  factory _$FormFieldSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormFieldSchemaImplFromJson(json);

  @override
  final String? label;
  @override
  final String? initialValue;
  @override
  final String? type;
  // text, number, dropdown, signature, table, radio
  @override
  @JsonKey()
  final bool required;
  @override
  @JsonKey()
  final bool readOnly;
  final List<String>? _options;
  @override
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? rowCount;
  // dropdown
  final List<TableColumnSchema>? _tablecolumn;
  // dropdown
  @override
  List<TableColumnSchema>? get tablecolumn {
    final value = _tablecolumn;
    if (value == null) return null;
    if (_tablecolumn is EqualUnmodifiableListView) return _tablecolumn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormFieldSchema(label: $label, initialValue: $initialValue, type: $type, required: $required, readOnly: $readOnly, options: $options, rowCount: $rowCount, tablecolumn: $tablecolumn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldSchemaImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.rowCount, rowCount) ||
                other.rowCount == rowCount) &&
            const DeepCollectionEquality().equals(
              other._tablecolumn,
              _tablecolumn,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    label,
    initialValue,
    type,
    required,
    readOnly,
    const DeepCollectionEquality().hash(_options),
    rowCount,
    const DeepCollectionEquality().hash(_tablecolumn),
  );

  /// Create a copy of FormFieldSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldSchemaImplCopyWith<_$FormFieldSchemaImpl> get copyWith =>
      __$$FormFieldSchemaImplCopyWithImpl<_$FormFieldSchemaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FormFieldSchemaImplToJson(this);
  }
}

abstract class _FormFieldSchema implements FormFieldSchema {
  const factory _FormFieldSchema({
    final String? label,
    final String? initialValue,
    final String? type,
    final bool required,
    final bool readOnly,
    final List<String>? options,
    final int? rowCount,
    final List<TableColumnSchema>? tablecolumn,
  }) = _$FormFieldSchemaImpl;

  factory _FormFieldSchema.fromJson(Map<String, dynamic> json) =
      _$FormFieldSchemaImpl.fromJson;

  @override
  String? get label;
  @override
  String? get initialValue;
  @override
  String? get type; // text, number, dropdown, signature, table, radio
  @override
  bool get required;
  @override
  bool get readOnly;
  @override
  List<String>? get options;
  @override
  int? get rowCount; // dropdown
  @override
  List<TableColumnSchema>? get tablecolumn;

  /// Create a copy of FormFieldSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldSchemaImplCopyWith<_$FormFieldSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TableColumnSchema _$TableColumnSchemaFromJson(Map<String, dynamic> json) {
  return _TableColumnSchema.fromJson(json);
}

/// @nodoc
mixin _$TableColumnSchema {
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this TableColumnSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableColumnSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableColumnSchemaCopyWith<TableColumnSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableColumnSchemaCopyWith<$Res> {
  factory $TableColumnSchemaCopyWith(
    TableColumnSchema value,
    $Res Function(TableColumnSchema) then,
  ) = _$TableColumnSchemaCopyWithImpl<$Res, TableColumnSchema>;
  @useResult
  $Res call({String? label});
}

/// @nodoc
class _$TableColumnSchemaCopyWithImpl<$Res, $Val extends TableColumnSchema>
    implements $TableColumnSchemaCopyWith<$Res> {
  _$TableColumnSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableColumnSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = freezed}) {
    return _then(
      _value.copyWith(
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TableColumnSchemaImplCopyWith<$Res>
    implements $TableColumnSchemaCopyWith<$Res> {
  factory _$$TableColumnSchemaImplCopyWith(
    _$TableColumnSchemaImpl value,
    $Res Function(_$TableColumnSchemaImpl) then,
  ) = __$$TableColumnSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label});
}

/// @nodoc
class __$$TableColumnSchemaImplCopyWithImpl<$Res>
    extends _$TableColumnSchemaCopyWithImpl<$Res, _$TableColumnSchemaImpl>
    implements _$$TableColumnSchemaImplCopyWith<$Res> {
  __$$TableColumnSchemaImplCopyWithImpl(
    _$TableColumnSchemaImpl _value,
    $Res Function(_$TableColumnSchemaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TableColumnSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = freezed}) {
    return _then(
      _$TableColumnSchemaImpl(
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TableColumnSchemaImpl implements _TableColumnSchema {
  const _$TableColumnSchemaImpl({this.label});

  factory _$TableColumnSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableColumnSchemaImplFromJson(json);

  @override
  final String? label;

  @override
  String toString() {
    return 'TableColumnSchema(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableColumnSchemaImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of TableColumnSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableColumnSchemaImplCopyWith<_$TableColumnSchemaImpl> get copyWith =>
      __$$TableColumnSchemaImplCopyWithImpl<_$TableColumnSchemaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TableColumnSchemaImplToJson(this);
  }
}

abstract class _TableColumnSchema implements TableColumnSchema {
  const factory _TableColumnSchema({final String? label}) =
      _$TableColumnSchemaImpl;

  factory _TableColumnSchema.fromJson(Map<String, dynamic> json) =
      _$TableColumnSchemaImpl.fromJson;

  @override
  String? get label;

  /// Create a copy of TableColumnSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableColumnSchemaImplCopyWith<_$TableColumnSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
