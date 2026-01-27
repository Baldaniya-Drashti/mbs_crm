// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:mbs_crm/core/constants/api_constants.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/infrastructure/common_response/common_response.dart';
import 'package:mbs_crm/core/network/interceptor/api_error_interceptors.dart';
import 'package:mbs_crm/core/network/interceptor/dio_connectivity_request_retrier.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  CommonResponse commonResponse = CommonResponse();
  static Dio dio = Dio();

  static Dio initAPIService({
    bool isMultipart = false,
    required BuildContext context,
  }) {
    final interceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? userToken = await getToken();

        print("API Token---> $userToken");
        if (userToken.isNotEmpty) {
          options.headers.addAll({"Authorization": "Bearer $userToken"});
        }

        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.resolve(response);
      },
      onError: (DioException e, handler) async {
        return handler.next(e);
      },
    );
    var acceptHeader = Headers.jsonContentType;
    var contentTypeHeader = isMultipart
        ? Headers.multipartFormDataContentType
        : Headers.jsonContentType;
    var headers = {
      HttpHeaders.acceptHeader: acceptHeader,
      HttpHeaders.contentTypeHeader: contentTypeHeader,
    };
    final BaseOptions options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: 150000),
      receiveTimeout: const Duration(milliseconds: 150000),
      headers: headers,
      contentType: isMultipart
          ? Headers.multipartFormDataContentType
          : Headers.jsonContentType,
    );

    dio = Dio(options)
      ..interceptors.addAll([
        LogInterceptor(requestBody: true, responseBody: true),
        AppInterceptors(
          requestRetrier: DioConnectivityRequestRetrier(
            dio: dio,
            connectivity: Connectivity(),
          ),
        ),
        interceptor,
      ]);

    return dio;
  }

  Future<CommonResponse> getMethod(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool showSucessToast = true,
  }) async {
    BuildContext context = getIt<AppRouter>().navigatorKey.currentContext!;
    dio = initAPIService(context: context);

    try {
      var response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            'accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );
      if (response.statusCode == 200) {
        commonResponse = CommonResponse.fromJson(response.data);
        if (commonResponse.dioMessage != null &&
            commonResponse.status == true) {
          if (showSucessToast) {
            await showSuccess(
              message: commonResponse.dioMessage ?? '',
            ).show(context);
          }
        }
        return CommonResponse.fromJson(response.data);
      } else {
        return CommonResponse();
      }
    } on SocketException catch (_) {
      await showError(
        message: 'Please check your internet connectivity',
      ).show(context);

      return CommonResponse();
    }
  }

  Future<CommonResponse?> putMethod(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    bool isMultipart = false,
    FormData? formData,
  }) async {
    BuildContext context = getIt<AppRouter>().navigatorKey.currentContext!;

    dio = initAPIService(isMultipart: isMultipart, context: context);

    var response = await dio.put(
      path,
      data: isMultipart ? formData : data,
      queryParameters: queryParameters,
    );

    return CommonResponse.fromJson(response.data);
  }

  Future<CommonResponse?> deleteMethod(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    BuildContext context = getIt<AppRouter>().navigatorKey.currentContext!;

    dio = initAPIService(context: context);

    var response = await dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
    );

    return CommonResponse.fromJson(response.data);
  }

  Future<CommonResponse> postMethod(
    String path,
    dynamic data, {
    bool isMultipart = false,
    FormData? formData,
    Map<String, dynamic>? queryParameters,
    bool showSucessToast = true,
  }) async {
    BuildContext currentContext =
        getIt<AppRouter>().navigatorKey.currentContext!;

    dio = initAPIService(isMultipart: isMultipart, context: currentContext);

    var response = await dio.post(
      path,
      data: isMultipart ? formData : data,
      queryParameters: queryParameters,
    );

    if (response.statusCode == 200) {
      final commonRes = CommonResponse.fromJson(response.data);
      if (commonRes.dioMessage != null &&
          commonRes.dioMessage != 'FCM register successfully' &&
          commonRes.dioMessage != 'Success') {
        if (showSucessToast) {
          await showSuccess(
            message: commonRes.dioMessage ?? '',
          ).show(currentContext);
        }
      }
    } else {
      showError(
        message: "${response.statusCode} - ${response.statusMessage ?? ""}",
      ).show(currentContext);
    }

    return CommonResponse.fromJson(response.data);
  }
}
