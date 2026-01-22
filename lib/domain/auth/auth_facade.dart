import 'package:mbs_crm/core/constants/api_constants.dart';
import 'package:mbs_crm/core/network/api_service.dart';
import 'package:mbs_crm/domain/auth/auth_failure.dart';
import 'package:mbs_crm/domain/auth/i_auth_facade.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:mbs_crm/infrastructure/common_response/common_response.dart';
import 'package:mbs_crm/infrastructure/current_user/current_user_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final ApiService apiService;

  AuthFacade(this.apiService);

  @override
  Future<bool> checkAuthenticated() async {
    final token = await getToken();
    return token.isNotEmpty;
  }

  @override
  Future<Either<AuthFailure, String>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.postMethod(ApiConstants.login, {
        "email": email,
        "password": password,
      });

      final account = CurrentUserDTO.fromJson(response.data);

      await setToken(account.auth?.token ?? "");
      await setUserData(account);
      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> logout() async {
    try {
      return apiService.getMethod(ApiConstants.logout).then((value) async {
        clearLocalStorage();
        return right(value.dioMessage ?? "");
      });
    } on DioException catch (err) {
      if (err.response != null) {
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> editProfile({
    required String firstName,
    required String lastName,
    required String displayName,
    required String email,
  }) async {
    try {
      final response = await apiService.postMethod(ApiConstants.editProfile, {
        "first_name": firstName,
        "last_name": lastName,
        "display_name": displayName,
        "email": email,
      });

      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> getCurrentUser() async {
    try {
      final currentUser = await getUserData();
      final response = await apiService.getMethod(
        ApiConstants.getUserDetail,
        queryParameters: {'id': currentUser.userId},
      );

      final account = CurrentUserDTO.fromJson(response.data);

      await setUserData(account);
      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> changePasswordAPI({
    required String currentPass,
    required String newPass,
    required String confirmPass,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'current_password': currentPass,
        'new_password': newPass,
        'confirm_password': confirmPass,
      };

      final response = await apiService.postMethod(
        ApiConstants.changePassword,
        mapData,
      );

      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> forgotPasswordAPI({
    required String email,
  }) async {
    try {
      Map<String, dynamic> mapData = {'email': email};

      final response = await apiService.postMethod(
        ApiConstants.forgotPassword,
        mapData,
      );

      return right(response.dioMessage ?? "");
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            AuthFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(AuthFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const AuthFailure.networkError());
      }

      return left(const AuthFailure.serverError());
    }
  }
}
