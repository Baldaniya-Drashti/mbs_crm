import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/domain/auth/i_auth_facade.dart';
part 'user_main_tab_state.dart';
part 'user_main_tab_event.dart';
part 'user_main_tab_bloc.freezed.dart';

@injectable
class UserMainTabBloc extends Bloc<UserMainTabEvent, UserMainTabState> {
  final List<String> pageList = [UserHomeView.name];
  final IAuthFacade authFacade;

  UserMainTabBloc(this.authFacade) : super(UserMainTabState.initial()) {
    on<UserMainTabEvent>((event, emit) async {
      await event.map(
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
      );
    });
  }
}
