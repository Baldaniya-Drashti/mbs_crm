part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAPIList() = GetAPIList;
  const factory HomeEvent.getFormsList(bool isRefresh) = GetFormsList;
  const factory HomeEvent.getUsersList(bool isRefresh) = GetUsersList;
  const factory HomeEvent.deleteUser(int id) = DeleteUser;
  const factory HomeEvent.deleteForm(FormIdentifier form) = DeleteForm;
}
