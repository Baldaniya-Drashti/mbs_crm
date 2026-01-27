part of 'form_tab_bloc.dart';

@freezed
class FormTabEvent with _$FormTabEvent {
  const factory FormTabEvent.getFormsList(bool isRefresh, {int? userId}) =
      GetFormsList;
  const factory FormTabEvent.deleteFormEvent(int id, {int? userId}) =
      DeleteFormEvent;
}
