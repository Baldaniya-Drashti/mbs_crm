import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/infrastructure/common_response/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';

abstract class IMainFacade {
  Future<Either<MainFailure, CommonResponse>> formListAPI({required int page});
  Future<Either<MainFailure, CommonResponse>> userListAPI({required int page});
  Future<Either<MainFailure, CommonResponse>> addFormAPI({
    required HomeDTO form,
  });
  Future<DynamicFormDTO> loadSchema(String formId);
}
