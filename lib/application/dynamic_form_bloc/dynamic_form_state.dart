part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormState with _$DynamicFormState {
  const factory DynamicFormState({
    DynamicFormDTO? schema,

    int? updateFormId,
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool success,
    String? errorMessage,
    @Default({}) Map<String, List<AttachmentFileDTO>> attachmentCache,

    /// For non-FormBuilder values (signature, table)
    // @Default({}) Map<String, dynamic> dynamicValues,
  }) = _DynamicFormState;

  factory DynamicFormState.initial() => const DynamicFormState();
}
