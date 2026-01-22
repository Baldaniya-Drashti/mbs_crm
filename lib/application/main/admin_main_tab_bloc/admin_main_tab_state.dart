part of 'admin_main_tab_bloc.dart';

@freezed
class AdminMainTabState with _$AdminMainTabState {
  factory AdminMainTabState({
    // required int currentUserType,
    required int selectedTab,
    required int pageIndex,
    required String homePage,
    required String myAccountPage,
    required String formDetailView,
    // required bool authenticated,
  }) = _AdminMainTabState;
  factory AdminMainTabState.initial() => AdminMainTabState(
    // currentUserType: 2,
    selectedTab: 0,
    pageIndex: 0,
    homePage: AdminHomeView.name,
    myAccountPage: MyAccountView.name,
    formDetailView: FormDetailView.name,
    // authenticated: false,
  );
}
