// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainTabState {
  int get currentUserType => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  String get homePage => throw _privateConstructorUsedError;
  String get myAccountPage => throw _privateConstructorUsedError;

  /// Create a copy of MainTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainTabStateCopyWith<MainTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabStateCopyWith<$Res> {
  factory $MainTabStateCopyWith(
    MainTabState value,
    $Res Function(MainTabState) then,
  ) = _$MainTabStateCopyWithImpl<$Res, MainTabState>;
  @useResult
  $Res call({
    int currentUserType,
    int selectedTab,
    int pageIndex,
    String homePage,
    String myAccountPage,
  });
}

/// @nodoc
class _$MainTabStateCopyWithImpl<$Res, $Val extends MainTabState>
    implements $MainTabStateCopyWith<$Res> {
  _$MainTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserType = null,
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
  }) {
    return _then(
      _value.copyWith(
            currentUserType: null == currentUserType
                ? _value.currentUserType
                : currentUserType // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$MainTabStateImplCopyWith<$Res>
    implements $MainTabStateCopyWith<$Res> {
  factory _$$MainTabStateImplCopyWith(
    _$MainTabStateImpl value,
    $Res Function(_$MainTabStateImpl) then,
  ) = __$$MainTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentUserType,
    int selectedTab,
    int pageIndex,
    String homePage,
    String myAccountPage,
  });
}

/// @nodoc
class __$$MainTabStateImplCopyWithImpl<$Res>
    extends _$MainTabStateCopyWithImpl<$Res, _$MainTabStateImpl>
    implements _$$MainTabStateImplCopyWith<$Res> {
  __$$MainTabStateImplCopyWithImpl(
    _$MainTabStateImpl _value,
    $Res Function(_$MainTabStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserType = null,
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
  }) {
    return _then(
      _$MainTabStateImpl(
        currentUserType: null == currentUserType
            ? _value.currentUserType
            : currentUserType // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$MainTabStateImpl implements _MainTabState {
  _$MainTabStateImpl({
    required this.currentUserType,
    required this.selectedTab,
    required this.pageIndex,
    required this.homePage,
    required this.myAccountPage,
  });

  @override
  final int currentUserType;
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
    return 'MainTabState(currentUserType: $currentUserType, selectedTab: $selectedTab, pageIndex: $pageIndex, homePage: $homePage, myAccountPage: $myAccountPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainTabStateImpl &&
            (identical(other.currentUserType, currentUserType) ||
                other.currentUserType == currentUserType) &&
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
  int get hashCode => Object.hash(
    runtimeType,
    currentUserType,
    selectedTab,
    pageIndex,
    homePage,
    myAccountPage,
  );

  /// Create a copy of MainTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainTabStateImplCopyWith<_$MainTabStateImpl> get copyWith =>
      __$$MainTabStateImplCopyWithImpl<_$MainTabStateImpl>(this, _$identity);
}

abstract class _MainTabState implements MainTabState {
  factory _MainTabState({
    required final int currentUserType,
    required final int selectedTab,
    required final int pageIndex,
    required final String homePage,
    required final String myAccountPage,
  }) = _$MainTabStateImpl;

  @override
  int get currentUserType;
  @override
  int get selectedTab;
  @override
  int get pageIndex;
  @override
  String get homePage;
  @override
  String get myAccountPage;

  /// Create a copy of MainTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainTabStateImplCopyWith<_$MainTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function() setUserType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function()? setUserType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function()? setUserType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(SetUserType value) setUserType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(SetUserType value)? setUserType,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(SetUserType value)? setUserType,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabEventCopyWith<$Res> {
  factory $MainTabEventCopyWith(
    MainTabEvent value,
    $Res Function(MainTabEvent) then,
  ) = _$MainTabEventCopyWithImpl<$Res, MainTabEvent>;
}

/// @nodoc
class _$MainTabEventCopyWithImpl<$Res, $Val extends MainTabEvent>
    implements $MainTabEventCopyWith<$Res> {
  _$MainTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TabChangeImplCopyWith<$Res> {
  factory _$$TabChangeImplCopyWith(
    _$TabChangeImpl value,
    $Res Function(_$TabChangeImpl) then,
  ) = __$$TabChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$TabChangeImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
    _$TabChangeImpl _value,
    $Res Function(_$TabChangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainTabEvent
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
    return 'MainTabEvent.tabChange(tabIndex: $tabIndex)';
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

  /// Create a copy of MainTabEvent
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
    required TResult Function() setUserType,
  }) {
    return tabChange(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function()? setUserType,
  }) {
    return tabChange?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function()? setUserType,
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
    required TResult Function(SetUserType value) setUserType,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(SetUserType value)? setUserType,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(SetUserType value)? setUserType,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class TabChange implements MainTabEvent {
  factory TabChange(final int tabIndex) = _$TabChangeImpl;

  int get tabIndex;

  /// Create a copy of MainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUserTypeImplCopyWith<$Res> {
  factory _$$SetUserTypeImplCopyWith(
    _$SetUserTypeImpl value,
    $Res Function(_$SetUserTypeImpl) then,
  ) = __$$SetUserTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetUserTypeImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$SetUserTypeImpl>
    implements _$$SetUserTypeImplCopyWith<$Res> {
  __$$SetUserTypeImplCopyWithImpl(
    _$SetUserTypeImpl _value,
    $Res Function(_$SetUserTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetUserTypeImpl implements SetUserType {
  _$SetUserTypeImpl();

  @override
  String toString() {
    return 'MainTabEvent.setUserType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetUserTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function() setUserType,
  }) {
    return setUserType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function()? setUserType,
  }) {
    return setUserType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function()? setUserType,
    required TResult orElse(),
  }) {
    if (setUserType != null) {
      return setUserType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(SetUserType value) setUserType,
  }) {
    return setUserType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(SetUserType value)? setUserType,
  }) {
    return setUserType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(SetUserType value)? setUserType,
    required TResult orElse(),
  }) {
    if (setUserType != null) {
      return setUserType(this);
    }
    return orElse();
  }
}

abstract class SetUserType implements MainTabEvent {
  factory SetUserType() = _$SetUserTypeImpl;
}
