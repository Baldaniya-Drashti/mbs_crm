part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.setSelectedUser(int selectedUser) =
      SetSelectedUser;
  const factory OnboardingEvent.submitUser() = SubmitUser;
}
