// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) getFavoritesList,
    required TResult Function(int id) toggleFavourite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? getFavoritesList,
    TResult? Function(int id)? toggleFavourite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? getFavoritesList,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoritesList value) getFavoritesList,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavoritesList value)? getFavoritesList,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoritesList value)? getFavoritesList,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
    FavoritesEvent value,
    $Res Function(FavoritesEvent) then,
  ) = _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFavoritesListImplCopyWith<$Res> {
  factory _$$GetFavoritesListImplCopyWith(
    _$GetFavoritesListImpl value,
    $Res Function(_$GetFavoritesListImpl) then,
  ) = __$$GetFavoritesListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$GetFavoritesListImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$GetFavoritesListImpl>
    implements _$$GetFavoritesListImplCopyWith<$Res> {
  __$$GetFavoritesListImplCopyWithImpl(
    _$GetFavoritesListImpl _value,
    $Res Function(_$GetFavoritesListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$GetFavoritesListImpl(
        null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$GetFavoritesListImpl implements GetFavoritesList {
  const _$GetFavoritesListImpl(this.isRefresh);

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'FavoritesEvent.getFavoritesList(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesListImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoritesListImplCopyWith<_$GetFavoritesListImpl> get copyWith =>
      __$$GetFavoritesListImplCopyWithImpl<_$GetFavoritesListImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) getFavoritesList,
    required TResult Function(int id) toggleFavourite,
  }) {
    return getFavoritesList(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? getFavoritesList,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return getFavoritesList?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? getFavoritesList,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (getFavoritesList != null) {
      return getFavoritesList(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoritesList value) getFavoritesList,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return getFavoritesList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavoritesList value)? getFavoritesList,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return getFavoritesList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoritesList value)? getFavoritesList,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (getFavoritesList != null) {
      return getFavoritesList(this);
    }
    return orElse();
  }
}

abstract class GetFavoritesList implements FavoritesEvent {
  const factory GetFavoritesList(final bool isRefresh) = _$GetFavoritesListImpl;

  bool get isRefresh;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFavoritesListImplCopyWith<_$GetFavoritesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFavouriteImplCopyWith<$Res> {
  factory _$$ToggleFavouriteImplCopyWith(
    _$ToggleFavouriteImpl value,
    $Res Function(_$ToggleFavouriteImpl) then,
  ) = __$$ToggleFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ToggleFavouriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$ToggleFavouriteImpl>
    implements _$$ToggleFavouriteImplCopyWith<$Res> {
  __$$ToggleFavouriteImplCopyWithImpl(
    _$ToggleFavouriteImpl _value,
    $Res Function(_$ToggleFavouriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$ToggleFavouriteImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ToggleFavouriteImpl implements ToggleFavourite {
  const _$ToggleFavouriteImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FavoritesEvent.toggleFavourite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavouriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavouriteImplCopyWith<_$ToggleFavouriteImpl> get copyWith =>
      __$$ToggleFavouriteImplCopyWithImpl<_$ToggleFavouriteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) getFavoritesList,
    required TResult Function(int id) toggleFavourite,
  }) {
    return toggleFavourite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? getFavoritesList,
    TResult? Function(int id)? toggleFavourite,
  }) {
    return toggleFavourite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? getFavoritesList,
    TResult Function(int id)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoritesList value) getFavoritesList,
    required TResult Function(ToggleFavourite value) toggleFavourite,
  }) {
    return toggleFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavoritesList value)? getFavoritesList,
    TResult? Function(ToggleFavourite value)? toggleFavourite,
  }) {
    return toggleFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoritesList value)? getFavoritesList,
    TResult Function(ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite(this);
    }
    return orElse();
  }
}

abstract class ToggleFavourite implements FavoritesEvent {
  const factory ToggleFavourite(final int id) = _$ToggleFavouriteImpl;

  int get id;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavouriteImplCopyWith<_$ToggleFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isNoDataFound => throw _privateConstructorUsedError;
  List<int> get favouriteIds => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
    FavoritesState value,
    $Res Function(FavoritesState) then,
  ) = _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({
    bool isSubmitting,
    bool isLoading,
    bool showError,
    bool isNoDataFound,
    List<int> favouriteIds,
  });
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? isNoDataFound = null,
    Object? favouriteIds = null,
  }) {
    return _then(
      _value.copyWith(
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            showError: null == showError
                ? _value.showError
                : showError // ignore: cast_nullable_to_non_nullable
                      as bool,
            isNoDataFound: null == isNoDataFound
                ? _value.isNoDataFound
                : isNoDataFound // ignore: cast_nullable_to_non_nullable
                      as bool,
            favouriteIds: null == favouriteIds
                ? _value.favouriteIds
                : favouriteIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FavoritesStateImplCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$FavoritesStateImplCopyWith(
    _$FavoritesStateImpl value,
    $Res Function(_$FavoritesStateImpl) then,
  ) = __$$FavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isSubmitting,
    bool isLoading,
    bool showError,
    bool isNoDataFound,
    List<int> favouriteIds,
  });
}

/// @nodoc
class __$$FavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateImpl>
    implements _$$FavoritesStateImplCopyWith<$Res> {
  __$$FavoritesStateImplCopyWithImpl(
    _$FavoritesStateImpl _value,
    $Res Function(_$FavoritesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? isNoDataFound = null,
    Object? favouriteIds = null,
  }) {
    return _then(
      _$FavoritesStateImpl(
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        showError: null == showError
            ? _value.showError
            : showError // ignore: cast_nullable_to_non_nullable
                  as bool,
        isNoDataFound: null == isNoDataFound
            ? _value.isNoDataFound
            : isNoDataFound // ignore: cast_nullable_to_non_nullable
                  as bool,
        favouriteIds: null == favouriteIds
            ? _value._favouriteIds
            : favouriteIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc

class _$FavoritesStateImpl implements _FavoritesState {
  _$FavoritesStateImpl({
    required this.isSubmitting,
    required this.isLoading,
    required this.showError,
    required this.isNoDataFound,
    required final List<int> favouriteIds,
  }) : _favouriteIds = favouriteIds;

  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final bool isNoDataFound;
  final List<int> _favouriteIds;
  @override
  List<int> get favouriteIds {
    if (_favouriteIds is EqualUnmodifiableListView) return _favouriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteIds);
  }

  @override
  String toString() {
    return 'FavoritesState(isSubmitting: $isSubmitting, isLoading: $isLoading, showError: $showError, isNoDataFound: $isNoDataFound, favouriteIds: $favouriteIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.isNoDataFound, isNoDataFound) ||
                other.isNoDataFound == isNoDataFound) &&
            const DeepCollectionEquality().equals(
              other._favouriteIds,
              _favouriteIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isSubmitting,
    isLoading,
    showError,
    isNoDataFound,
    const DeepCollectionEquality().hash(_favouriteIds),
  );

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      __$$FavoritesStateImplCopyWithImpl<_$FavoritesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _FavoritesState implements FavoritesState {
  factory _FavoritesState({
    required final bool isSubmitting,
    required final bool isLoading,
    required final bool showError,
    required final bool isNoDataFound,
    required final List<int> favouriteIds,
  }) = _$FavoritesStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  bool get isNoDataFound;
  @override
  List<int> get favouriteIds;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
