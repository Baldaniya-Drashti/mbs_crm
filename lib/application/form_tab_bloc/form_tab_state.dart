part of 'form_tab_bloc.dart';

@freezed
class FormTabState with _$FormTabState {
  factory FormTabState({
    required List<HomeDTO> formsList,
    required bool isLoading,
    required bool isSubmitting,
    required bool isErrorInAPI,
    required bool isNoDataFound,
  }) = _FormTabState;
  factory FormTabState.initial() => FormTabState(
    formsList: [],
    isErrorInAPI: false,
    isLoading: false,
    isNoDataFound: false,
    isSubmitting: false,
  );
}
