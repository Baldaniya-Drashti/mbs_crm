part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormEvent with _$DynamicFormEvent {
  const factory DynamicFormEvent.loadForm(String formId) = LoadForm;
  // const factory DynamicFormEvent.updateValue(String key, dynamic value) =
  //     _UpdateValue;
  const factory DynamicFormEvent.submitForm(Map<String, dynamic> values) =
      SubmitForm;
}
