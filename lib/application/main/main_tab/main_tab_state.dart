part of 'main_tab_bloc.dart';

@freezed
class MainTabState with _$MainTabState {
  factory MainTabState({
    required int currentUserType,
    required int selectedTab,
    required int pageIndex,
    required String homePage,
    required String myAccountPage,
    // required bool authenticated,
  }) = _MainTabState;
  factory MainTabState.initial() => MainTabState(
    currentUserType: 2,
    selectedTab: 0,
    pageIndex: 0,
    homePage: HomeView.name,
    myAccountPage: MyAccountView.name,

    // authenticated: false,
  );
}
