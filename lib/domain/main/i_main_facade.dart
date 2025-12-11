import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/infrastructure/common_response/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

abstract class IMainFacade {
  Future<Either<MainFailure, CommonResponse>> homeListAPI({required int page});
  Future<DynamicFormDTO> loadSchema(String formId);
}
