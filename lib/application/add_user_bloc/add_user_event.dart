part of 'add_user_bloc.dart';

@freezed
class AddUserEvent with _$AddUserEvent {
  const factory AddUserEvent.getUser(int? userId) = GetUser;
  const factory AddUserEvent.emailChanged(String email) = EmailChanged;
  const factory AddUserEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory AddUserEvent.lastNameChanged(String lastName) = LastNameChanged;

  const factory AddUserEvent.passwordChanged(String password) = PasswordChanged;
  const factory AddUserEvent.confirmPasswordChanged(
    String confirmPassword,
    String password,
  ) = ConfirmPasswordChanged;
  const factory AddUserEvent.obscureChanged() = ObscureChanged;
  const factory AddUserEvent.addUser() = AddUser;
  const factory AddUserEvent.updateUser(int id) = UpdateUser;
}
