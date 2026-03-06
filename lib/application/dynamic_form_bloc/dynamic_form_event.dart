part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormEvent with _$DynamicFormEvent {
  const factory DynamicFormEvent.loadForm(
    String formSlug, {
    FormIdentifier? formId,
  }) = LoadForm;
  const factory DynamicFormEvent.getFormDetails(FormIdentifier formId) =
      GetFormDetails;
  // const factory DynamicFormEvent.updateValue(String key, dynamic value) =
  //     _UpdateValue;
  const factory DynamicFormEvent.createForm(
    BuildContext context,
    Map<String, dynamic> values,
  ) = CreateForm;
  const factory DynamicFormEvent.updateForm(
    BuildContext context, {
    required FormIdentifier formId,
    required Map<String, dynamic> values,
  }) = UpdateForm;
  const factory DynamicFormEvent.attachFileEvent(
    BuildContext context, {
    required FormFieldSchema field,
    @Default(true) bool isOnlyImages,
  }) = AttachFileEvent;

  const factory DynamicFormEvent.inspectionGradeChanged(String grade) =
      InspectionGradeChanged;
  const factory DynamicFormEvent.onDropDownChanged({
    required String fieldKey,
    required dynamic value,
  }) = OnDropDownChanged;
  const factory DynamicFormEvent.deleteAttachmentEvent({
    required FormFileGroupDTO group,
    required AttachmentFileDTO file,
  }) = DeleteAttachmentEvent;
}
