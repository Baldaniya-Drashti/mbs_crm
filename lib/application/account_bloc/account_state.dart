part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState({required bool isSubmitting, required bool showError}) =
      _AccountState;
  factory AccountState.initial() =>
      AccountState(isSubmitting: false, showError: false);
}
