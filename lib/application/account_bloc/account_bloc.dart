import 'package:mbs_crm/domain/auth/auth_failure.dart';
import 'package:mbs_crm/domain/auth/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final IAuthFacade _authFacade;

  AccountBloc(this._authFacade) : super(AccountState.initial()) {
    on<AccountEvent>((event, emit) async {
      await event.map(
        getAccountDetailEvent: (e) async {
          Either<AuthFailure, String>? failureOrSuccess;

          emit(state.copyWith(isSubmitting: true));
          failureOrSuccess = await _authFacade.getCurrentUser();

          failureOrSuccess.fold(
            (l) {
              emit(state.copyWith(isSubmitting: false));
            },
            (r) {
              emit(state.copyWith(isSubmitting: false));
            },
          );
        },
      );
    });
  }
}
