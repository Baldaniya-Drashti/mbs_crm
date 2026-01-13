part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    required EmailAddress email,
    required Password password,
    required bool isObscure,
    required bool isSubmitting,
    required bool showError,
  }) = _SignInState;
  factory SignInState.initial() => SignInState(
    email: EmailAddress(""),
    password: Password(""),
    isObscure: true,
    isSubmitting: false,
    showError: false,
  );
}
