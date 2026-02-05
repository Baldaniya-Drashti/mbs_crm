// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HomeDTO _$HomeDTOFromJson(Map<String, dynamic> json) {
  return _HomeDTO.fromJson(json);
}

/// @nodoc
mixin _$HomeDTO {
  @JsonKey(name: 'id')
  int? get server_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  String get localId => throw _privateConstructorUsedError;
  bool get isSynced => throw _privateConstructorUsedError;
  String? get syncAction => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_type')
  int? get formType => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_name')
  String? get formName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_slug')
  String? get slug => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_json')
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_files')
  List<FormFileGroupDTO>? get formFiles => throw _privateConstructorUsedError;
  List<int>? get deletedFileIds => throw _privateConstructorUsedError;
  String? get pdfPath => throw _privateConstructorUsedError;

  /// Serializes this HomeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeDTOCopyWith<HomeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDTOCopyWith<$Res> {
  factory $HomeDTOCopyWith(HomeDTO value, $Res Function(HomeDTO) then) =
      _$HomeDTOCopyWithImpl<$Res, HomeDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? server_id,
    @JsonKey(name: 'user_name') String? userName,
    String localId,
    bool isSynced,
    String? syncAction,
    String? status,
    int? updatedAt,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    @JsonKey(name: 'created_at') int? createdAt,
    @JsonKey(name: 'form_slug') String? slug,
    String? image_url,
    @JsonKey(name: 'form_json') Map<String, dynamic>? data,
    @JsonKey(name: 'form_files') List<FormFileGroupDTO>? formFiles,
    List<int>? deletedFileIds,
    String? pdfPath,
  });
}

/// @nodoc
class _$HomeDTOCopyWithImpl<$Res, $Val extends HomeDTO>
    implements $HomeDTOCopyWith<$Res> {
  _$HomeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? server_id = freezed,
    Object? userName = freezed,
    Object? localId = null,
    Object? isSynced = null,
    Object? syncAction = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? formType = freezed,
    Object? formName = freezed,
    Object? createdAt = freezed,
    Object? slug = freezed,
    Object? image_url = freezed,
    Object? data = freezed,
    Object? formFiles = freezed,
    Object? deletedFileIds = freezed,
    Object? pdfPath = freezed,
  }) {
    return _then(
      _value.copyWith(
            server_id: freezed == server_id
                ? _value.server_id
                : server_id // ignore: cast_nullable_to_non_nullable
                      as int?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            localId: null == localId
                ? _value.localId
                : localId // ignore: cast_nullable_to_non_nullable
                      as String,
            isSynced: null == isSynced
                ? _value.isSynced
                : isSynced // ignore: cast_nullable_to_non_nullable
                      as bool,
            syncAction: freezed == syncAction
                ? _value.syncAction
                : syncAction // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as int?,
            formType: freezed == formType
                ? _value.formType
                : formType // ignore: cast_nullable_to_non_nullable
                      as int?,
            formName: freezed == formName
                ? _value.formName
                : formName // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as int?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            image_url: freezed == image_url
                ? _value.image_url
                : image_url // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            formFiles: freezed == formFiles
                ? _value.formFiles
                : formFiles // ignore: cast_nullable_to_non_nullable
                      as List<FormFileGroupDTO>?,
            deletedFileIds: freezed == deletedFileIds
                ? _value.deletedFileIds
                : deletedFileIds // ignore: cast_nullable_to_non_nullable
                      as List<int>?,
            pdfPath: freezed == pdfPath
                ? _value.pdfPath
                : pdfPath // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeDTOImplCopyWith<$Res> implements $HomeDTOCopyWith<$Res> {
  factory _$$HomeDTOImplCopyWith(
    _$HomeDTOImpl value,
    $Res Function(_$HomeDTOImpl) then,
  ) = __$$HomeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? server_id,
    @JsonKey(name: 'user_name') String? userName,
    String localId,
    bool isSynced,
    String? syncAction,
    String? status,
    int? updatedAt,
    @JsonKey(name: 'form_type') int? formType,
    @JsonKey(name: 'form_name') String? formName,
    @JsonKey(name: 'created_at') int? createdAt,
    @JsonKey(name: 'form_slug') String? slug,
    String? image_url,
    @JsonKey(name: 'form_json') Map<String, dynamic>? data,
    @JsonKey(name: 'form_files') List<FormFileGroupDTO>? formFiles,
    List<int>? deletedFileIds,
    String? pdfPath,
  });
}

/// @nodoc
class __$$HomeDTOImplCopyWithImpl<$Res>
    extends _$HomeDTOCopyWithImpl<$Res, _$HomeDTOImpl>
    implements _$$HomeDTOImplCopyWith<$Res> {
  __$$HomeDTOImplCopyWithImpl(
    _$HomeDTOImpl _value,
    $Res Function(_$HomeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? server_id = freezed,
    Object? userName = freezed,
    Object? localId = null,
    Object? isSynced = null,
    Object? syncAction = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? formType = freezed,
    Object? formName = freezed,
    Object? createdAt = freezed,
    Object? slug = freezed,
    Object? image_url = freezed,
    Object? data = freezed,
    Object? formFiles = freezed,
    Object? deletedFileIds = freezed,
    Object? pdfPath = freezed,
  }) {
    return _then(
      _$HomeDTOImpl(
        server_id: freezed == server_id
            ? _value.server_id
            : server_id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        localId: null == localId
            ? _value.localId
            : localId // ignore: cast_nullable_to_non_nullable
                  as String,
        isSynced: null == isSynced
            ? _value.isSynced
            : isSynced // ignore: cast_nullable_to_non_nullable
                  as bool,
        syncAction: freezed == syncAction
            ? _value.syncAction
            : syncAction // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as int?,
        formType: freezed == formType
            ? _value.formType
            : formType // ignore: cast_nullable_to_non_nullable
                  as int?,
        formName: freezed == formName
            ? _value.formName
            : formName // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as int?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        image_url: freezed == image_url
            ? _value.image_url
            : image_url // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        formFiles: freezed == formFiles
            ? _value._formFiles
            : formFiles // ignore: cast_nullable_to_non_nullable
                  as List<FormFileGroupDTO>?,
        deletedFileIds: freezed == deletedFileIds
            ? _value._deletedFileIds
            : deletedFileIds // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        pdfPath: freezed == pdfPath
            ? _value.pdfPath
            : pdfPath // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDTOImpl implements _HomeDTO {
  const _$HomeDTOImpl({
    @JsonKey(name: 'id') this.server_id,
    @JsonKey(name: 'user_name') this.userName,
    this.localId = "",
    this.isSynced = false,
    this.syncAction,
    this.status,
    this.updatedAt,
    @JsonKey(name: 'form_type') this.formType,
    @JsonKey(name: 'form_name') this.formName,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'form_slug') this.slug,
    this.image_url,
    @JsonKey(name: 'form_json') final Map<String, dynamic>? data,
    @JsonKey(name: 'form_files') final List<FormFileGroupDTO>? formFiles,
    final List<int>? deletedFileIds,
    this.pdfPath,
  }) : _data = data,
       _formFiles = formFiles,
       _deletedFileIds = deletedFileIds;

  factory _$HomeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? server_id;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey()
  final String localId;
  @override
  @JsonKey()
  final bool isSynced;
  @override
  final String? syncAction;
  @override
  final String? status;
  @override
  final int? updatedAt;
  @override
  @JsonKey(name: 'form_type')
  final int? formType;
  @override
  @JsonKey(name: 'form_name')
  final String? formName;
  @override
  @JsonKey(name: 'created_at')
  final int? createdAt;
  @override
  @JsonKey(name: 'form_slug')
  final String? slug;
  @override
  final String? image_url;
  final Map<String, dynamic>? _data;
  @override
  @JsonKey(name: 'form_json')
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<FormFileGroupDTO>? _formFiles;
  @override
  @JsonKey(name: 'form_files')
  List<FormFileGroupDTO>? get formFiles {
    final value = _formFiles;
    if (value == null) return null;
    if (_formFiles is EqualUnmodifiableListView) return _formFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _deletedFileIds;
  @override
  List<int>? get deletedFileIds {
    final value = _deletedFileIds;
    if (value == null) return null;
    if (_deletedFileIds is EqualUnmodifiableListView) return _deletedFileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pdfPath;

  @override
  String toString() {
    return 'HomeDTO(server_id: $server_id, userName: $userName, localId: $localId, isSynced: $isSynced, syncAction: $syncAction, status: $status, updatedAt: $updatedAt, formType: $formType, formName: $formName, createdAt: $createdAt, slug: $slug, image_url: $image_url, data: $data, formFiles: $formFiles, deletedFileIds: $deletedFileIds, pdfPath: $pdfPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDTOImpl &&
            (identical(other.server_id, server_id) ||
                other.server_id == server_id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.localId, localId) || other.localId == localId) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.syncAction, syncAction) ||
                other.syncAction == syncAction) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.formType, formType) ||
                other.formType == formType) &&
            (identical(other.formName, formName) ||
                other.formName == formName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(
              other._formFiles,
              _formFiles,
            ) &&
            const DeepCollectionEquality().equals(
              other._deletedFileIds,
              _deletedFileIds,
            ) &&
            (identical(other.pdfPath, pdfPath) || other.pdfPath == pdfPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    server_id,
    userName,
    localId,
    isSynced,
    syncAction,
    status,
    updatedAt,
    formType,
    formName,
    createdAt,
    slug,
    image_url,
    const DeepCollectionEquality().hash(_data),
    const DeepCollectionEquality().hash(_formFiles),
    const DeepCollectionEquality().hash(_deletedFileIds),
    pdfPath,
  );

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDTOImplCopyWith<_$HomeDTOImpl> get copyWith =>
      __$$HomeDTOImplCopyWithImpl<_$HomeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDTOImplToJson(this);
  }
}

abstract class _HomeDTO implements HomeDTO {
  const factory _HomeDTO({
    @JsonKey(name: 'id') final int? server_id,
    @JsonKey(name: 'user_name') final String? userName,
    final String localId,
    final bool isSynced,
    final String? syncAction,
    final String? status,
    final int? updatedAt,
    @JsonKey(name: 'form_type') final int? formType,
    @JsonKey(name: 'form_name') final String? formName,
    @JsonKey(name: 'created_at') final int? createdAt,
    @JsonKey(name: 'form_slug') final String? slug,
    final String? image_url,
    @JsonKey(name: 'form_json') final Map<String, dynamic>? data,
    @JsonKey(name: 'form_files') final List<FormFileGroupDTO>? formFiles,
    final List<int>? deletedFileIds,
    final String? pdfPath,
  }) = _$HomeDTOImpl;

  factory _HomeDTO.fromJson(Map<String, dynamic> json) = _$HomeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get server_id;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  String get localId;
  @override
  bool get isSynced;
  @override
  String? get syncAction;
  @override
  String? get status;
  @override
  int? get updatedAt;
  @override
  @JsonKey(name: 'form_type')
  int? get formType;
  @override
  @JsonKey(name: 'form_name')
  String? get formName;
  @override
  @JsonKey(name: 'created_at')
  int? get createdAt;
  @override
  @JsonKey(name: 'form_slug')
  String? get slug;
  @override
  String? get image_url;
  @override
  @JsonKey(name: 'form_json')
  Map<String, dynamic>? get data;
  @override
  @JsonKey(name: 'form_files')
  List<FormFileGroupDTO>? get formFiles;
  @override
  List<int>? get deletedFileIds;
  @override
  String? get pdfPath;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeDTOImplCopyWith<_$HomeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
