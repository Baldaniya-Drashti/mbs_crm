// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mbs_crm/core/constants/api_constants.dart';
import 'package:mbs_crm/core/network/api_service.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/infrastructure/common_response/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/infrastructure/current_user/current_user_response.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';

@LazySingleton(as: IMainFacade)
class MainFacade implements IMainFacade {
  final ApiService apiService;
  static const int _perPage = 25;

  MainFacade({required this.apiService});

  @override
  Future<Either<MainFailure, CommonResponse>> formListAPI({
    required int page,
    int? userId,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'page': page,
        'limit': _perPage,
        if (userId != null) 'user_id': userId,
      };
      final response = await apiService.postMethod(
        ApiConstants.formList,
        mapData,
      );

      return right(response);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, HomeDTO?>> addFormAPI({
    required HomeDTO form,
    bool showSucessToast = true,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'form_type': form.formType,
        'form_name': form.formName,
        'form_slug': form.slug,
        'form_json': jsonEncode(form.data),
      };

      print("Sending Data---> ${jsonEncode(mapData)}");

      final response = await apiService.postMethod(
        ApiConstants.addForm,
        showSucessToast: showSucessToast,
        mapData,
      );

      final account = HomeDTO.fromJson(response.data);

      return right(account);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, HomeDTO?>> updateFormAPI({
    required HomeDTO form,
    bool showSucessToast = true,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'form_type': form.formType,
        'form_name': form.formName,
        'form_slug': form.slug,
        'form_json': jsonEncode(form.data),
      };

      print("Sending Data---> ${jsonEncode(mapData)}");

      final response = await apiService.postMethod(
        "${ApiConstants.addForm}/${form.server_id}",
        mapData,
        showSucessToast: showSucessToast,
      );

      final account = HomeDTO.fromJson(response.data);

      return right(account);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> userListAPI({
    required int page,
  }) async {
    try {
      Map<String, dynamic> mapData = {'page': page, 'limit': _perPage};

      print("USer list Sending Data---> $mapData");
      final response = await apiService.getMethod(
        ApiConstants.users,
        queryParameters: mapData,
      );

      return right(response);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, String>> addUserAPI({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'password': password,
      };

      print("Sending Data---> ${jsonEncode(mapData)}");

      final response = await apiService.postMethod(
        ApiConstants.addUser,
        mapData,
      );

      return right(response.dioMessage ?? '');
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, CurrentUserDTO>> getUserDetailAPI({
    required int id,
  }) async {
    try {
      final response = await apiService.getMethod(
        ApiConstants.getUserDetail,
        queryParameters: {'id': id},
      );

      final account = CurrentUserDTO.fromJson(response.data);

      return right(account);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, String>> deleteUserAPI({required int id}) async {
    try {
      final response = await apiService.postMethod(ApiConstants.deleteUser, {
        'id': id,
      });

      return right(response.dioMessage ?? '');
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, String>> updateUserAPI({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
      };

      print("Sending Data---> ${jsonEncode(mapData)}");

      final response = await apiService.postMethod(
        ApiConstants.updateUser,
        mapData,
      );

      return right(response.dioMessage ?? '');
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, String>> deleteFormAPI({
    required int id,
    bool showSucessToast = true,
  }) async {
    try {
      final response = await apiService.getMethod(
        "${ApiConstants.deleteForm}/$id",
      );

      return right(response.dioMessage ?? '');
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, HomeDTO>> getFormDetailAPI({
    required int id,
  }) async {
    try {
      final response = await apiService.postMethod(ApiConstants.formList, {
        'id': id,
      });

      final account = HomeDTO.fromJson(response.data);

      return right(account);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeDTO>>> getAllFormForDB() async {
    try {
      final response = await apiService.getMethod(ApiConstants.getAllFormList);

      var list = response.data as List<dynamic>;
      var formList = list.map((e) => HomeDTO.fromJson(e)).toList();

      return right(formList);
    } on DioException catch (err) {
      if (err.response != null) {
        var commonRespose = CommonResponse.fromJson(err.response?.data);
        if (commonRespose.dioMessage != null) {
          return left(
            MainFailure.showAPIResponseMessage(commonRespose.dioMessage!),
          );
        }
        return left(MainFailure.showAPIResponseMessage(err.message ?? ''));
      } else if (err.type == DioExceptionType.connectionError) {
        return left(const MainFailure.networkError());
      }

      return left(const MainFailure.serverError());
    }
  }

  @override
  Future<DynamicFormDTO> loadSchema(String formId) async {
    final jsonString = await rootBundle.loadString(
      "${ApiConstants.jsonBaseUrl}$formId.json",
    );
    final json = jsonDecode(jsonString);
    return DynamicFormDTO.fromJson(json);
  }
}
