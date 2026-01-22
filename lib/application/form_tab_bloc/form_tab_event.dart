part of 'form_tab_bloc.dart';

@freezed
class FormTabEvent with _$FormTabEvent {
  const factory FormTabEvent.getFormsList(bool isRefresh) = GetFormsList;
  const factory FormTabEvent.deleteFormEvent(int id) = DeleteFormEvent;
}
