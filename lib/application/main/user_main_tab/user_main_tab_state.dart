part of 'user_main_tab_bloc.dart';

@freezed
class UserMainTabState with _$UserMainTabState {
  factory UserMainTabState({
    required int selectedTab,
    required int pageIndex,
    required String homePage,
    required String myAccountPage,
    // required bool authenticated,
  }) = _UserMainTabState;
  factory UserMainTabState.initial() => UserMainTabState(
    selectedTab: 0,
    pageIndex: 0,
    homePage: UserHomeView.name,
    myAccountPage: MyAccountView.name,
    // authenticated: false,
  );
}
