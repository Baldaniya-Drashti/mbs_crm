// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/injection.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final context = getIt<AppRouter>().navigatorKey.currentContext!;
  OnboardingBloc() : super(OnboardingState.initial()) {
    on<OnboardingEvent>((event, emit) async {
      await event.map(
        setSelectedUser: (e) {
          emit(state.copyWith(selectedUser: e.selectedUser));
        },
        submitUser: (e) async {
          await setUserType(state.selectedUser);
          context.router.push(PageRouteInfo(SignIn.name));
        },
      );
    });
  }
}
