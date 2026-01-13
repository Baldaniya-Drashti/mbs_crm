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
  }) async {
    try {
      Map<String, dynamic> mapData = {'page': page, 'limit': _perPage};
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
  Future<Either<MainFailure, CommonResponse>> userListAPI({
    required int page,
  }) async {
    try {
      Map<String, dynamic> mapData = {'page': page, 'limit': _perPage};
      final response = await apiService.postMethod(ApiConstants.users, mapData);

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
  Future<Either<MainFailure, CommonResponse>> addFormAPI({
    required HomeDTO form,
    /* required String formType,
    required String formName,
    required dynamic formJson, */
  }) async {
    try {
      Map<String, dynamic> mapData = {
        'form_type': form.formType,
        'form_name': form.slug,
        'form_json': form.data.toString(),
      };

      print("Sending Data---> ${jsonEncode(form)}");

      final response = await apiService.postMethod(
        ApiConstants.addForm,
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
  Future<DynamicFormDTO> loadSchema(String formId) async {
    final jsonString = await rootBundle.loadString(
      "${ApiConstants.jsonBaseUrl}$formId.json",
    );
    final json = jsonDecode(jsonString);
    return DynamicFormDTO.fromJson(json);
  }
}
