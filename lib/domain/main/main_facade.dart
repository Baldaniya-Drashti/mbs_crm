// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mbs_crm/core/constants/api_constants.dart';
import 'package:mbs_crm/core/network/api_service.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
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
      final formFiles = form.formFiles ?? [];
      print("Add Form API Form Type-----> ${form.formType}");

      final formData = FormData.fromMap({
        'form_type': form.formType,
        'form_name': form.formName,
        'form_slug': form.slug,
        'form_json': jsonEncode(form.data),
      });

      if (form.pdfPath != null && File(form.pdfPath!).existsSync()) {
        formData.files.add(
          MapEntry('form_pdf', await MultipartFile.fromFile(form.pdfPath!)),
        );
      }

      // -------------------- ATTACHMENT FILES -------------------- //
      for (int i = 0; i < formFiles.length; i++) {
        final item = formFiles[i];

        formData.fields.add(
          MapEntry('form_files[$i][section_slug]', item.sectionSlug ?? ''),
        );

        if (item.optionSlug != null) {
          formData.fields.add(
            MapEntry('form_files[$i][option_slug]', item.optionSlug ?? ''),
          );
        }

        formData.fields.add(
          MapEntry('form_files[$i][option_type]', item.optionType ?? ''),
        );

        final List<AttachmentFileDTO> files = item.files ?? [];

        for (int j = 0; j < files.length; j++) {
          final file = files[j];
          if (file.uploaded || file.url!.startsWith('http')) continue;

          formData.files.add(
            MapEntry(
              'form_files[$i][files][$j]',
              await MultipartFile.fromFile(file.url!, filename: file.name),
            ),
          );
        }
      }

      print("Sending Data---> $formData");
      _logFormData(formData);
      final response = await apiService.postMethod(
        ApiConstants.addForm,
        showSucessToast: showSucessToast,
        {},
        formData: formData,
        isMultipart: true,
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
      print("Sending Data---> ${jsonEncode(form)}");
      final formFiles = form.formFiles ?? [];

      final filteredFormFiles = formFiles.where((group) {
        final files = group.files ?? [];
        // Keep group only if at least one file is not uploaded / local
        return files.any(
          (f) => !f.uploaded && !(f.url?.startsWith('http') ?? false),
        );
      }).toList();

      // Prepare multipart form data
      final formData = FormData.fromMap({
        'form_type': form.formType,
        'form_name': form.formName,
        'form_slug': form.slug,
        'form_json': jsonEncode(form.data),
        if (form.deletedFileIds?.isNotEmpty == true)
          'deleted_file_ids': form.deletedFileIds!.join(','),
      });

      if (form.pdfPath != null && File(form.pdfPath!).existsSync()) {
        formData.files.add(
          MapEntry('form_pdf', await MultipartFile.fromFile(form.pdfPath!)),
        );
      }

      // -------------------- ATTACHMENT FILES -------------------- //
      for (int i = 0; i < filteredFormFiles.length; i++) {
        final item = filteredFormFiles[i];

        formData.fields.add(
          MapEntry('form_files[$i][section_slug]', item.sectionSlug ?? ''),
        );

        if (item.optionSlug != null) {
          formData.fields.add(
            MapEntry('form_files[$i][option_slug]', item.optionSlug ?? ''),
          );
        }

        formData.fields.add(
          MapEntry('form_files[$i][option_type]', item.optionType ?? ''),
        );

        final List<AttachmentFileDTO> files = item.files ?? [];

        for (int j = 0; j < files.length; j++) {
          final file = files[j];

          // Only upload new files (not already uploaded / existing URLs)
          if (file.uploaded || file.url!.startsWith('http')) continue;

          formData.files.add(
            MapEntry(
              'form_files[$i][files][$j]',
              await MultipartFile.fromFile(file.url!, filename: file.name),
            ),
          );
        }
      }

      print("Sending Data---> ${form}");
      print("Sending Data--->11  ${form.server_id}");
      _logFormData(formData);
      final response = await apiService.postMethod(
        "${ApiConstants.addForm}/${form.server_id}",
        {},
        showSucessToast: showSucessToast,
        formData: formData,
        isMultipart: true,
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

  void _logFormData(FormData formData) {
    debugPrint('--- FORM DATA FIELDS ---');
    for (var field in formData.fields) {
      debugPrint('${field.key}: ${field.value}');
    }

    debugPrint('--- FORM DATA FILES ------ ${formData.files.length}');
    for (var file in formData.files) {
      debugPrint('${file.key}: ${(file.value).filename}');
      debugPrint('${file.key}: ${(file.value)}');
    }
  }

  /*  @override
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
        if (form.deletedFileIds?.isNotEmpty == true)
          'deleted_file_ids': jsonEncode(form.deletedFileIds),
      };

      print("form.deletedFileId---> ${jsonEncode(mapData)}");
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
 */
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
