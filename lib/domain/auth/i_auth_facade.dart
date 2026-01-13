import 'package:mbs_crm/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<bool> checkAuthenticated();

  Future<Either<AuthFailure, String>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<Either<AuthFailure, String>> login({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, String>> logout();
  Future<Either<AuthFailure, String>> editProfile({
    required String firstName,
    required String lastName,
    required String displayName,
    required String email,
  });
  Future<Either<AuthFailure, String>> getCurrentUser();

  Future<Either<AuthFailure, String>> changePasswordAPI({
    required String currentPass,
    required String newPass,
    required String confirmPass,
  });

  Future<Either<AuthFailure, String>> forgotPasswordAPI({
    required String email,
  });
}
