import 'package:mbs_crm/core/database/db_repository.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IMainFacade mainFacade;
  int page = 1;
  int lastPage = 1;
  final RefreshController refreshController = RefreshController();
  HomeBloc(this.mainFacade) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        getFormsList: (e) async {
          final isOnline = await NetworkListener().isOnline();
          /* if (isOnline) {
            if (e.isRefresh) {
              page = 1;
              emit(state.copyWith(formsList: [], isLoading: e.isRefresh));
              refreshController.resetNoData();
            } else {
              if (page > lastPage) {
                refreshController.loadNoData();
                return;
              }
            }
            var res = await mainFacade.homeListAPI(page: page);
            page++;
            res.fold(
              (l) {
                showError(
                  message: l.maybeMap(
                    showAPIResponseMessage: (value) => value.message,
                    networkError: (value) =>
                        'Please check your internet connectivity',
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(currentContext);
                emit(
                  state.copyWith(
                    isLoading: false,
                    isErrorInAPI: true,
                    formsList: [],
                  ),
                );
              },
              (r) {
                lastPage = r.meta?.lastPage ?? 1;

                if (e.isRefresh) {
                  List.from(state.formsList).clear();
                }
                return emit(
                  state.copyWith(
                    isLoading: false,
                    isErrorInAPI: false,
                    isNoDataFound: (r.data as List<dynamic>)
                        .map((e) => HomeDTO.fromJson(e))
                        .toList()
                        .isEmpty,
                    formsList: List.from(state.formsList)
                      ..addAll(
                        (r.data as List<dynamic>)
                            .map((e) => HomeDTO.fromJson(e))
                            .toList(),
                      ),
                  ),
                );
              },
            );
          } else  */
          {
            try {
              emit(state.copyWith(formsList: [], isLoading: true));

              final rows = await DBRepository().getAllOfflineForms();

              final localForms = rows.map((e) {
                return e;
              }).toList();

              print("Get From Local DB--> $localForms");

              emit(
                state.copyWith(
                  isLoading: false,
                  formsList: localForms,
                  isErrorInAPI: false,
                ),
              );
            } catch (e) {
              print("ERROR: Get From Local DB isuue--> $e");
            }
          }
        },
      );
    });
  }
}
