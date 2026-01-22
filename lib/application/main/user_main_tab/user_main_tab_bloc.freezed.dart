// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_main_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserMainTabState {
  int get selectedTab => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  String get homePage => throw _privateConstructorUsedError;
  String get myAccountPage => throw _privateConstructorUsedError;

  /// Create a copy of UserMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMainTabStateCopyWith<UserMainTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMainTabStateCopyWith<$Res> {
  factory $UserMainTabStateCopyWith(
    UserMainTabState value,
    $Res Function(UserMainTabState) then,
  ) = _$UserMainTabStateCopyWithImpl<$Res, UserMainTabState>;
  @useResult
  $Res call({
    int selectedTab,
    int pageIndex,
    String homePage,
    String myAccountPage,
  });
}

/// @nodoc
class _$UserMainTabStateCopyWithImpl<$Res, $Val extends UserMainTabState>
    implements $UserMainTabStateCopyWith<$Res> {
  _$UserMainTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
  }) {
    return _then(
      _value.copyWith(
            selectedTab: null == selectedTab
                ? _value.selectedTab
                : selectedTab // ignore: cast_nullable_to_non_nullable
                      as int,
            pageIndex: null == pageIndex
                ? _value.pageIndex
                : pageIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            homePage: null == homePage
                ? _value.homePage
                : homePage // ignore: cast_nullable_to_non_nullable
                      as String,
            myAccountPage: null == myAccountPage
                ? _value.myAccountPage
                : myAccountPage // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserMainTabStateImplCopyWith<$Res>
    implements $UserMainTabStateCopyWith<$Res> {
  factory _$$UserMainTabStateImplCopyWith(
    _$UserMainTabStateImpl value,
    $Res Function(_$UserMainTabStateImpl) then,
  ) = __$$UserMainTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int selectedTab,
    int pageIndex,
    String homePage,
    String myAccountPage,
  });
}

/// @nodoc
class __$$UserMainTabStateImplCopyWithImpl<$Res>
    extends _$UserMainTabStateCopyWithImpl<$Res, _$UserMainTabStateImpl>
    implements _$$UserMainTabStateImplCopyWith<$Res> {
  __$$UserMainTabStateImplCopyWithImpl(
    _$UserMainTabStateImpl _value,
    $Res Function(_$UserMainTabStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
  }) {
    return _then(
      _$UserMainTabStateImpl(
        selectedTab: null == selectedTab
            ? _value.selectedTab
            : selectedTab // ignore: cast_nullable_to_non_nullable
                  as int,
        pageIndex: null == pageIndex
            ? _value.pageIndex
            : pageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        homePage: null == homePage
            ? _value.homePage
            : homePage // ignore: cast_nullable_to_non_nullable
                  as String,
        myAccountPage: null == myAccountPage
            ? _value.myAccountPage
            : myAccountPage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UserMainTabStateImpl implements _UserMainTabState {
  _$UserMainTabStateImpl({
    required this.selectedTab,
    required this.pageIndex,
    required this.homePage,
    required this.myAccountPage,
  });

  @override
  final int selectedTab;
  @override
  final int pageIndex;
  @override
  final String homePage;
  @override
  final String myAccountPage;

  @override
  String toString() {
    return 'UserMainTabState(selectedTab: $selectedTab, pageIndex: $pageIndex, homePage: $homePage, myAccountPage: $myAccountPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMainTabStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.myAccountPage, myAccountPage) ||
                other.myAccountPage == myAccountPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedTab, pageIndex, homePage, myAccountPage);

  /// Create a copy of UserMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMainTabStateImplCopyWith<_$UserMainTabStateImpl> get copyWith =>
      __$$UserMainTabStateImplCopyWithImpl<_$UserMainTabStateImpl>(
        this,
        _$identity,
      );
}

abstract class _UserMainTabState implements UserMainTabState {
  factory _UserMainTabState({
    required final int selectedTab,
    required final int pageIndex,
    required final String homePage,
    required final String myAccountPage,
  }) = _$UserMainTabStateImpl;

  @override
  int get selectedTab;
  @override
  int get pageIndex;
  @override
  String get homePage;
  @override
  String get myAccountPage;

  /// Create a copy of UserMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMainTabStateImplCopyWith<_$UserMainTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserMainTabEvent {
  int get tabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of UserMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMainTabEventCopyWith<UserMainTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMainTabEventCopyWith<$Res> {
  factory $UserMainTabEventCopyWith(
    UserMainTabEvent value,
    $Res Function(UserMainTabEvent) then,
  ) = _$UserMainTabEventCopyWithImpl<$Res, UserMainTabEvent>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$UserMainTabEventCopyWithImpl<$Res, $Val extends UserMainTabEvent>
    implements $UserMainTabEventCopyWith<$Res> {
  _$UserMainTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tabIndex = null}) {
    return _then(
      _value.copyWith(
            tabIndex: null == tabIndex
                ? _value.tabIndex
                : tabIndex // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TabChangeImplCopyWith<$Res>
    implements $UserMainTabEventCopyWith<$Res> {
  factory _$$TabChangeImplCopyWith(
    _$TabChangeImpl value,
    $Res Function(_$TabChangeImpl) then,
  ) = __$$TabChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$TabChangeImplCopyWithImpl<$Res>
    extends _$UserMainTabEventCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
    _$TabChangeImpl _value,
    $Res Function(_$TabChangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tabIndex = null}) {
    return _then(
      _$TabChangeImpl(
        null == tabIndex
            ? _value.tabIndex
            : tabIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TabChangeImpl implements TabChange {
  _$TabChangeImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'UserMainTabEvent.tabChange(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangeImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  /// Create a copy of UserMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      __$$TabChangeImplCopyWithImpl<_$TabChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
  }) {
    return tabChange(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
  }) {
    return tabChange?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class TabChange implements UserMainTabEvent {
  factory TabChange(final int tabIndex) = _$TabChangeImpl;

  @override
  int get tabIndex;

  /// Create a copy of UserMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
