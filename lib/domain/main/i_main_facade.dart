import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/infrastructure/common_response/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mbs_crm/infrastructure/current_user/current_user_response.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';

abstract class IMainFacade {
  Future<Either<MainFailure, CommonResponse>> formListAPI({required int page});
  Future<Either<MainFailure, CommonResponse>> userListAPI({required int page});
  Future<Either<MainFailure, HomeDTO?>> addFormAPI({required HomeDTO form});
  Future<Either<MainFailure, HomeDTO?>> updateFormAPI({required HomeDTO form});
  Future<DynamicFormDTO> loadSchema(String formId);

  Future<Either<MainFailure, String>> addUserAPI({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });
  Future<Either<MainFailure, CurrentUserDTO>> getUserDetailAPI({
    required int id,
  });
  Future<Either<MainFailure, String>> deleteUserAPI({required int id});
  Future<Either<MainFailure, String>> updateUserAPI({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
  });

  Future<Either<MainFailure, String>> deleteFormAPI({required int id});
  Future<Either<MainFailure, HomeDTO>> getFormDetailAPI({required int id});
  Future<Either<MainFailure, List<HomeDTO>>> getAllFormForDB();
}
