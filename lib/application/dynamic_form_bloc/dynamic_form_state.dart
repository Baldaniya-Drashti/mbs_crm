part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormState with _$DynamicFormState {
  const factory DynamicFormState({
    DynamicFormDTO? schema,
    HomeDTO? existingForm,
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool success,
    @Default(0) int rebuildTick,
    String? errorMessage,
    @Default({}) Map<String, List<AttachmentFileDTO>> attachmentCache,

    /// For non-FormBuilder values (signature, table)
    // @Default({}) Map<String, dynamic> dynamicValues,
  }) = _DynamicFormState;

  factory DynamicFormState.initial() => const DynamicFormState();
}
