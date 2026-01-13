part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getFormsList(bool isRefresh) = GetFormsList;
  const factory HomeEvent.getUsersList(bool isRefresh) = GetUsersList;
}
