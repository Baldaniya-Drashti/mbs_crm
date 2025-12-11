part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState({required int selectedUser}) = _OnboardingState;
  factory OnboardingState.initial() => OnboardingState(selectedUser: 2);
}
