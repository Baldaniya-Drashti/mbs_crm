part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormEvent with _$DynamicFormEvent {
  const factory DynamicFormEvent.loadForm(String formType, {int? id}) =
      LoadForm;
  const factory DynamicFormEvent.getFormDetails(int id) = GetFormDetails;
  // const factory DynamicFormEvent.updateValue(String key, dynamic value) =
  //     _UpdateValue;
  const factory DynamicFormEvent.submitForm(Map<String, dynamic> values) =
      SubmitForm;
  const factory DynamicFormEvent.attachFileEvent(FormFieldSchema field) =
      AttachFileEvent;

  const factory DynamicFormEvent.onDropDownChanged({
    required String fieldKey,
    required dynamic value,
  }) = OnDropDownChanged;
}
