import 'package:mbs_crm/domain/auth/auth_failure.dart';
import 'package:mbs_crm/domain/auth/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_status_event.dart';
part 'auth_status_state.dart';
part 'auth_status_bloc.freezed.dart';

@injectable
class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  final IAuthFacade _authFacade;

  AuthStatusBloc(this._authFacade) : super(const AuthStatusState.initial()) {
    on<AuthStatusEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          await _authFacade.getCurrentUser();
        },
        authCheckRequested: (e) async {
          final authenticated = await _authFacade.checkAuthenticated();

          emit(
            authenticated
                ? const AuthStatusState.authenticated()
                : const AuthStatusState.unAuthenticated(''),
          );
          // }
        },
        signedOut: (e) async {
          Either<AuthFailure, String> res;
          res = await _authFacade.logout();
          res.fold((l) => null, (r) {
            emit(AuthStatusState.initial());
            emit(AuthStatusState.unAuthenticated(r));
          });
        },
      );
    });
  }
}
