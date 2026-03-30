part of 'admin_main_tab_bloc.dart';

@freezed
class AdminMainTabEvent with _$AdminMainTabEvent {
  factory AdminMainTabEvent.tabChange(int tabIndex) = TabChange;
}
