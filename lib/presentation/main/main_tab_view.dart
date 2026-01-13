// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:mbs_crm/application/account_bloc/account_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/application/main/main_tab/main_tab_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/new_form_list_dialog.dart';
import 'package:mbs_crm/presentation/main/tabs/my_account/my_account.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/app_focus.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:mbs_crm/presentation/main/tabs/home/home_view.dart';
import 'package:mbs_crm/presentation/main/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart' as autoroute;
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'MainTabView')
class MainTabView extends StatefulWidget {
  final bool isFromLogin;
  const MainTabView({super.key, this.isFromLogin = false});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  @override
  void initState() {
    super.initState();
    context.read<AccountBloc>().add(AccountEvent.getAccountDetailEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<MainTabBloc>()..add(MainTabEvent.setUserType()),
        ),
        BlocProvider(
          create: (context) => getIt<HomeBloc>()
            ..add(
              (context.read<MainTabBloc>().state.currentUserType == 1)
                  ? HomeEvent.getUsersList(true)
                  : HomeEvent.getFormsList(true),
            ),
        ),
      ],
      child: BlocBuilder<MainTabBloc, MainTabState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 1,
            child: Scaffold(
              appBar: getAppbar(state, context),
              body: GestureDetector(
                onTap: () => AppFocus.unfocus(context),
                child: IndexedStack(
                  index: state.pageIndex,
                  children: List<Widget>.generate(
                    context.read<MainTabBloc>().pageList.length,
                    (int index) {
                      return Navigator(
                        onGenerateRoute: (RouteSettings settings) {
                          return onGenerateRoute(
                            settings,
                            context.read<MainTabBloc>().pageList[index],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  NewFormDialog.dialog(
                    context,
                    onTap: (form) {
                      context.router
                          .push(
                            PageRouteInfo(
                              autoroute.DynamicForm.name,
                              args: autoroute.DynamicFormArgs(form: form),
                            ),
                          )
                          .then((value) {
                            if (value == true) {
                              context.read<HomeBloc>().add(
                                HomeEvent.getFormsList(true),
                              );
                            }
                          });
                    },
                  );
                },
                backgroundColor: AppColors.primary,
                shape: CircleBorder(
                  side: BorderSide(color: AppColors.primary, width: getSize(3)),
                ),
                child: Icon(
                  Icons.add,
                  size: getSize(30),
                  color: AppColors.white,
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: CustomBottomNavigationWidget(),
            ),
          );
        },
      ),
    );
  }
}

getAppbar(MainTabState state, BuildContext context) {
  switch (state.selectedTab) {
    case 0:
      return CustomAppBar(
        title: (context.read<MainTabBloc>().state.currentUserType == 1)
            ? StringConstant.users
            : StringConstant.forms,
        showBackBtn: false,
      );
    case 1:
      return CustomAppBar(title: StringConstant.myAccount, showBackBtn: false);
    default:
  }
}

Route? onGenerateRoute(RouteSettings settings, String tabItem) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      if (tabItem == autoroute.HomeView.name) {
        return HomeView();
      } else if (tabItem == autoroute.MyAccountView.name) {
        return MyAccountView();
      }
      return Container();
    },
  );
}
