import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';

part 'dynamic_form_event.dart';
part 'dynamic_form_state.dart';
part 'dynamic_form_bloc.freezed.dart';

@injectable
class DynamicFormBloc extends Bloc<DynamicFormEvent, DynamicFormState> {
  IMainFacade mainFacade;
  DynamicFormBloc(this.mainFacade) : super(DynamicFormState.initial()) {
    on<DynamicFormEvent>((event, emit) async {
      await event.map(
        loadForm: (e) async {
          emit(state.copyWith(isLoading: true));
          try {
            final schema = await mainFacade.loadSchema(e.formId);
            emit(state.copyWith(schema: schema, isLoading: false));
          } catch (e) {
            print("Catch Error---> ${e}");
          }
        },
        /*updateValue: (e) {
          final updated = Map<String, dynamic>.from(state.dynamicValues);
          updated[e.key] = e.value;
          emit(state.copyWith(dynamicValues: updated));
        },*/
        submitForm: (e) async {
          emit(state.copyWith(isSubmitting: true));
          emit(state.copyWith(isSubmitting: false, success: true));
        },
      );
    });
  }
}
