part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormState with _$DynamicFormState {
  const factory DynamicFormState({
    DynamicFormDTO? schema,
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool success,
    String? errorMessage,

    /// For non-FormBuilder values (signature, table)
    // @Default({}) Map<String, dynamic> dynamicValues,
  }) = _DynamicFormState;

  factory DynamicFormState.initial() => const DynamicFormState();
}
