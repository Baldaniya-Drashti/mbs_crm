part of 'main_tab_bloc.dart';

@freezed
class MainTabEvent with _$MainTabEvent {
  factory MainTabEvent.tabChange(int tabIndex) = TabChange;
  factory MainTabEvent.setUserType() = SetUserType;
  // const factory MainTabEvent.getAccountDetailEvent() = GetAccountDetailEvent;
}
