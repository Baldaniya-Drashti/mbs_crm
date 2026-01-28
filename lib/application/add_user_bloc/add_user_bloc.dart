// ignore_for_file: avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/domain/validators/validators.dart';
import 'package:mbs_crm/infrastructure/current_user/current_user_response.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/app_focus.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';

part 'add_user_event.dart';
part 'add_user_state.dart';
part 'add_user_bloc.freezed.dart';

@injectable
class AddUserBloc extends Bloc<AddUserEvent, AddUserState> {
  final IMainFacade mainFacade;
  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;
  AddUserBloc(this.mainFacade) : super(AddUserState.initial()) {
    on<AddUserEvent>((event, emit) async {
      await event.map(
        getUser: (e) async {
          Either<MainFailure, CurrentUserDTO>? failureOrSuccess;
          if (e.userId != null) {
            emit(state.copyWith(isLoading: true));
            failureOrSuccess = await mainFacade.getUserDetailAPI(id: e.userId!);
            failureOrSuccess.fold(
              (failure) {
                showError(
                  message: failure.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
              },
              (r) {
                emit(
                  state.copyWith(
                    email: EmailAddress(r.email ?? ''),
                    firstName: InputEmptyOrNot(r.firstName ?? ''),
                    lastName: InputEmptyOrNot(r.lastName ?? ''),
                    isLoading: false,
                  ),
                );
              },
            );
          }
        },
        firstNameChanged: (e) {
          emit(state.copyWith(firstName: InputEmptyOrNot(e.firstName)));
        },
        lastNameChanged: (e) {
          emit(state.copyWith(lastName: InputEmptyOrNot(e.lastName)));
        },
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.password)));
          add(
            AddUserEvent.confirmPasswordChanged(
              state.confirmPassword.getValue(),
              e.password,
            ),
          );
        },
        confirmPasswordChanged: (e) {
          emit(
            state.copyWith(
              confirmPassword: ConfirmPassword(
                e.confirmPassword,
                state.password.getValue(),
              ),
            ),
          );
        },
        obscureChanged: (e) {
          emit(state.copyWith(isObscure: !state.isObscure));
        },
        addUser: (e) async {
          Either<MainFailure, String>? failureOrSuccess;

          final isFirstNameValid = state.firstName.isValid();
          final isLastNameValid = state.lastName.isValid();
          final isEmailValid = state.email.isValid();
          final isPasswordValid = state.password.isValid();
          final isConfirmPasswordValid = state.confirmPassword.isValid();

          if (isFirstNameValid &&
              isLastNameValid &&
              isEmailValid &&
              isPasswordValid &&
              isConfirmPasswordValid) {
            print("All Details Are Valid!");

            emit(state.copyWith(isSubmitting: true));
            failureOrSuccess = await mainFacade.addUserAPI(
              firstName: state.firstName.getValue() ?? '',
              lastName: state.lastName.getValue() ?? '',
              email: state.email.getValue(),
              password: state.password.getValue(),
            );

            failureOrSuccess.fold(
              (failure) {
                AppFocus.unfocus(currentContext);
                showError(
                  message: failure.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
              },
              (r) {
                AppFocus.unfocus(currentContext);
                currentContext.maybePop(true);
              },
            );
          } else {
            print(StringConstant.someDetailAreInvalidPleaseCheck);
          }

          emit(state.copyWith(isSubmitting: false, showError: true));
        },
        updateUser: (e) async {
          Either<MainFailure, String>? failureOrSuccess;

          final isFirstNameValid = state.firstName.isValid();
          final isLastNameValid = state.lastName.isValid();
          final isEmailValid = state.email.isValid();

          if (isFirstNameValid && isLastNameValid && isEmailValid) {
            print("All Details Are Valid!");

            emit(state.copyWith(isSubmitting: true));
            failureOrSuccess = await mainFacade.updateUserAPI(
              id: e.id,
              firstName: state.firstName.getValue() ?? '',
              lastName: state.lastName.getValue() ?? '',
              email: state.email.getValue(),
            );

            failureOrSuccess.fold(
              (failure) {
                AppFocus.unfocus(currentContext);
                showError(
                  message: failure.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
              },
              (r) {
                AppFocus.unfocus(currentContext);
                currentContext.maybePop(true);
              },
            );
          } else {
            print(StringConstant.someDetailAreInvalidPleaseCheck);
          }

          emit(state.copyWith(isSubmitting: false, showError: true));
        },
      );
    });
  }
}
