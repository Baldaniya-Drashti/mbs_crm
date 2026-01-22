part of 'user_main_tab_bloc.dart';

@freezed
class UserMainTabEvent with _$UserMainTabEvent {
  factory UserMainTabEvent.tabChange(int tabIndex) = TabChange;
  // const factory UserMainTabEvent.getAccountDetailEvent() = GetAccountDetailEvent;
}
