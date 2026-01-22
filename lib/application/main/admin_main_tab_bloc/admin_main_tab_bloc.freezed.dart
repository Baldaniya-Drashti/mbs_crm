// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_main_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AdminMainTabState {
  // required int currentUserType,
  int get selectedTab => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  String get homePage => throw _privateConstructorUsedError;
  String get myAccountPage => throw _privateConstructorUsedError;
  String get formDetailView => throw _privateConstructorUsedError;

  /// Create a copy of AdminMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminMainTabStateCopyWith<AdminMainTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminMainTabStateCopyWith<$Res> {
  factory $AdminMainTabStateCopyWith(
    AdminMainTabState value,
    $Res Function(AdminMainTabState) then,
  ) = _$AdminMainTabStateCopyWithImpl<$Res, AdminMainTabState>;
  @useResult
  $Res call({
    int selectedTab,
    int pageIndex,
    String homePage,
    String myAccountPage,
    String formDetailView,
  });
}

/// @nodoc
class _$AdminMainTabStateCopyWithImpl<$Res, $Val extends AdminMainTabState>
    implements $AdminMainTabStateCopyWith<$Res> {
  _$AdminMainTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
    Object? formDetailView = null,
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
            formDetailView: null == formDetailView
                ? _value.formDetailView
                : formDetailView // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdminMainTabStateImplCopyWith<$Res>
    implements $AdminMainTabStateCopyWith<$Res> {
  factory _$$AdminMainTabStateImplCopyWith(
    _$AdminMainTabStateImpl value,
    $Res Function(_$AdminMainTabStateImpl) then,
  ) = __$$AdminMainTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int selectedTab,
    int pageIndex,
    String homePage,
    String myAccountPage,
    String formDetailView,
  });
}

/// @nodoc
class __$$AdminMainTabStateImplCopyWithImpl<$Res>
    extends _$AdminMainTabStateCopyWithImpl<$Res, _$AdminMainTabStateImpl>
    implements _$$AdminMainTabStateImplCopyWith<$Res> {
  __$$AdminMainTabStateImplCopyWithImpl(
    _$AdminMainTabStateImpl _value,
    $Res Function(_$AdminMainTabStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
    Object? formDetailView = null,
  }) {
    return _then(
      _$AdminMainTabStateImpl(
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
        formDetailView: null == formDetailView
            ? _value.formDetailView
            : formDetailView // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AdminMainTabStateImpl implements _AdminMainTabState {
  _$AdminMainTabStateImpl({
    required this.selectedTab,
    required this.pageIndex,
    required this.homePage,
    required this.myAccountPage,
    required this.formDetailView,
  });

  // required int currentUserType,
  @override
  final int selectedTab;
  @override
  final int pageIndex;
  @override
  final String homePage;
  @override
  final String myAccountPage;
  @override
  final String formDetailView;

  @override
  String toString() {
    return 'AdminMainTabState(selectedTab: $selectedTab, pageIndex: $pageIndex, homePage: $homePage, myAccountPage: $myAccountPage, formDetailView: $formDetailView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminMainTabStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.myAccountPage, myAccountPage) ||
                other.myAccountPage == myAccountPage) &&
            (identical(other.formDetailView, formDetailView) ||
                other.formDetailView == formDetailView));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedTab,
    pageIndex,
    homePage,
    myAccountPage,
    formDetailView,
  );

  /// Create a copy of AdminMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminMainTabStateImplCopyWith<_$AdminMainTabStateImpl> get copyWith =>
      __$$AdminMainTabStateImplCopyWithImpl<_$AdminMainTabStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AdminMainTabState implements AdminMainTabState {
  factory _AdminMainTabState({
    required final int selectedTab,
    required final int pageIndex,
    required final String homePage,
    required final String myAccountPage,
    required final String formDetailView,
  }) = _$AdminMainTabStateImpl;

  // required int currentUserType,
  @override
  int get selectedTab;
  @override
  int get pageIndex;
  @override
  String get homePage;
  @override
  String get myAccountPage;
  @override
  String get formDetailView;

  /// Create a copy of AdminMainTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminMainTabStateImplCopyWith<_$AdminMainTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminMainTabEvent {
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

  /// Create a copy of AdminMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminMainTabEventCopyWith<AdminMainTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminMainTabEventCopyWith<$Res> {
  factory $AdminMainTabEventCopyWith(
    AdminMainTabEvent value,
    $Res Function(AdminMainTabEvent) then,
  ) = _$AdminMainTabEventCopyWithImpl<$Res, AdminMainTabEvent>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$AdminMainTabEventCopyWithImpl<$Res, $Val extends AdminMainTabEvent>
    implements $AdminMainTabEventCopyWith<$Res> {
  _$AdminMainTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminMainTabEvent
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
    implements $AdminMainTabEventCopyWith<$Res> {
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
    extends _$AdminMainTabEventCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
    _$TabChangeImpl _value,
    $Res Function(_$TabChangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminMainTabEvent
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
    return 'AdminMainTabEvent.tabChange(tabIndex: $tabIndex)';
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

  /// Create a copy of AdminMainTabEvent
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

abstract class TabChange implements AdminMainTabEvent {
  factory TabChange(final int tabIndex) = _$TabChangeImpl;

  @override
  int get tabIndex;

  /// Create a copy of AdminMainTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
