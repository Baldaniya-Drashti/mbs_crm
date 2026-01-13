import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/domain/auth/i_auth_facade.dart';
part 'main_tab_state.dart';
part 'main_tab_event.dart';
part 'main_tab_bloc.freezed.dart';

@injectable
class MainTabBloc extends Bloc<MainTabEvent, MainTabState> {
  final List<String> pageList = [HomeView.name];
  final IAuthFacade authFacade;

  MainTabBloc(this.authFacade) : super(MainTabState.initial()) {
    on<MainTabEvent>((event, emit) async {
      await event.map(
        setUserType: (e) async {
          final type = await getUserType();
          emit(state.copyWith(currentUserType: type));
        },
        tabChange: (value) async {
          emit(state.copyWith(selectedTab: value.tabIndex));
          switch (value.tabIndex) {
            case 0:
              if (!pageList.contains(state.homePage)) {
                pageList.add(state.homePage);
              }
              emit(state.copyWith(pageIndex: pageList.indexOf(state.homePage)));
              break;
            case 1:
              if (!pageList.contains(state.myAccountPage)) {
                pageList.add(state.myAccountPage);
              }
              emit(
                state.copyWith(
                  pageIndex: pageList.indexOf(state.myAccountPage),
                ),
              );
              break;
          }
        },

        /* getAccountDetailEvent: (e) async {
          print("this getAccountDetailEvent event is called ---> ");
          final isLoggedIn = await authFacade.checkAuthenticated();

          emit(state.copyWith(authenticated: isLoggedIn));
          print("User authenticate Check---> ${state.authenticated}");
        }, */
      );
    });
  }
}
