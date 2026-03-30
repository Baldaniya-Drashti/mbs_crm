// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:mbs_crm/core/database/db_repository.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:mbs_crm/core/helper/form_identifier.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/domain/main/main_failure.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/infrastructure/user_dto/user_dto.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
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
  final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;

  HomeBloc(this.mainFacade) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        getAPIList: (e) async {
          add(
            (await getUserType() == 1)
                ? HomeEvent.getUsersList(true)
                : HomeEvent.getFormsList(true),
          );
        },
        getUsersList: (e) async {
          try {
            if (e.isRefresh) {
              page = 1;
              emit(state.copyWith(usersList: [], isLoading: e.isRefresh));
              refreshController.resetNoData();
            } else {
              if (page > lastPage) {
                refreshController.loadNoData();
                return;
              }
            }
            var res = await mainFacade.userListAPI(page: page);
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
                    usersList: [],
                  ),
                );
              },
              (r) {
                lastPage = r.meta?.lastPage ?? 1;

                if (e.isRefresh) {
                  List.from(state.usersList).clear();
                }
                List<UserDTO> list = List.from(state.usersList)
                  ..addAll(
                    (r.data as List<dynamic>)
                        .map((e) => UserDTO.fromJson(e))
                        .toList(),
                  );

                return emit(
                  state.copyWith(
                    isLoading: false,
                    isErrorInAPI: false,
                    isNoDataFound: (r.data as List<dynamic>)
                        .map((e) => UserDTO.fromJson(e))
                        .toList()
                        .isEmpty,
                    usersList: list,
                  ),
                );
              },
            );
          } catch (e) {
            print("ERROR: Get From Local  isuue--> $e");
          }
        },
        getFormsList: (e) async {
          try {
            final isOnline = await NetworkListener().isOnline();

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
            if (isOnline) {
              var res = await mainFacade.formListAPI(page: page);
              await res.fold(
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
                (r) async {
                  lastPage = r.meta?.lastPage ?? 1;
                  if (e.isRefresh) {
                    List.from(state.formsList).clear();
                  }

                  final apiForms = (r.data as List)
                      .map((e) => HomeDTO.fromJson(e))
                      .toList();
                  await DBRepository().upsertFormSummary(apiForms);
                  final localForms = await DBRepository().getAllOfflineForms(
                    page: page,
                  );
                  page++;
                  return emit(
                    state.copyWith(
                      isLoading: false,
                      isErrorInAPI: false,
                      isNoDataFound: localForms.isEmpty,
                      formsList: localForms,
                    ),
                  );
                },
              );
              // -------- OFFFLINE ------ //
            } else {
              emit(state.copyWith(isLoading: true));

              if (page == 1) {
                final totalCount = await DBRepository().getOfflineFormsCount();
                lastPage = (totalCount / DBRepository.perPage).ceil();
              }

              if (page > lastPage) {
                refreshController.loadNoData();
                emit(state.copyWith(isLoading: false));
                return;
              }
              final rows = await DBRepository().getAllOfflineForms(page: page);

              page++;

              final updatedList = List<HomeDTO>.from(state.formsList)
                ..addAll(rows);

              emit(
                state.copyWith(
                  isLoading: false,
                  formsList: updatedList,
                  isNoDataFound: updatedList.isEmpty,
                  isErrorInAPI: false,
                ),
              );
            }
          } catch (e) {
            emit(state.copyWith(isLoading: false));
            print("ERROR: Get Home List isuue--> $e");
          }
        },
        deleteUser: (e) async {
          Either<MainFailure, String>? failureOrSuccess;
          emit(state.copyWith(isLoading: true));
          failureOrSuccess = await mainFacade.deleteUserAPI(id: e.id);
          failureOrSuccess.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  showAPIResponseMessage: (value) => value.message,
                  networkError: (value) =>
                      'Please check your internet connectivity',
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(currentContext);
            },
            (r) {
              add(HomeEvent.getUsersList(true));
            },
          );
          emit(state.copyWith(isLoading: false));
        },
        deleteForm: (e) async {
          try {
            Either<MainFailure, String>? failureOrSuccess;
            emit(state.copyWith(isLoading: true));
            final isOnline = await NetworkListener().isOnline();
            final db = DBRepository();

            HomeDTO? form;
            if (e.form.serverId != null) {
              form = await db.getFormByServerId(e.form.serverId!);
            } else if (e.form.localId != null) {
              form = await db.getFormByLocalId(e.form.localId!);
            }

            if (form == null) {
              emit(state.copyWith(isLoading: false));
              return;
            }

            /// OFFLINE Delete
            if (!isOnline) {
              await db.markFormForDelete(form);
              add(HomeEvent.getFormsList(true));
              emit(state.copyWith(isLoading: false));
              return;
            }

            /// ONLINE Delete
            if (e.form.serverId != null) {
              failureOrSuccess = await mainFacade.deleteFormAPI(
                id: e.form.serverId!,
              );
              await failureOrSuccess.fold(
                (failure) {
                  showError(
                    message: failure.maybeMap(
                      showAPIResponseMessage: (value) => value.message,
                      networkError: (value) =>
                          'Please check your internet connectivity',
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(currentContext);
                },
                (r) async {
                  await db.deleteLocalFormByServerId(e.form.serverId!);
                  add(HomeEvent.getFormsList(true));
                },
              );
            }
            // OFFLINE - only but online → just remove locally
            else {
              await db.markFormForDelete(form);
              add(HomeEvent.getFormsList(true));
            }
            emit(state.copyWith(isLoading: false));
          } catch (e) {
            print("Delete Error --> $e");
          }
        },
      );
    });
  }
}
