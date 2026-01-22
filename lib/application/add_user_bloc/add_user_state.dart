part of 'add_user_bloc.dart';

@freezed
class AddUserState with _$AddUserState {
  factory AddUserState({
    required EmailAddress email,
    required InputEmptyOrNot firstName,
    required InputEmptyOrNot lastName,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool isObscure,
    required bool isSubmitting,
    required bool isLoading,
    required bool showError,
    required bool isNoDataFound,
  }) = _AddUserState;
  factory AddUserState.initial() => AddUserState(
    email: EmailAddress(""),
    firstName: InputEmptyOrNot(""),
    lastName: InputEmptyOrNot(""),
    password: Password(""),
    confirmPassword: ConfirmPassword("", ""),
    isObscure: true,
    showError: false,
    isNoDataFound: false,
    isSubmitting: false,
    isLoading: false,
  );
}
