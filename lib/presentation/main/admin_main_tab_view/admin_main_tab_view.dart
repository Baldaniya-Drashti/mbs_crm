// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:mbs_crm/application/account_bloc/account_bloc.dart';
import 'package:mbs_crm/application/form_tab_bloc/form_tab_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/application/main/admin_main_tab_bloc/admin_main_tab_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/presentation/main/tabs/form_tab_view/form_tab_view.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/admin_home_view/admin_home_view.dart';
import 'package:mbs_crm/presentation/main/tabs/my_account/my_account.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/common/utils/app_focus.dart';
import 'package:mbs_crm/presentation/core/widgets/inputs/custom_app_bar.dart';
import 'package:mbs_crm/presentation/main/widgets/admin_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart' as autoroute;
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'AdminMainTabView')
class AdminMainTabView extends StatefulWidget {
  final bool isFromLogin;
  const AdminMainTabView({super.key, this.isFromLogin = false});

  @override
  State<AdminMainTabView> createState() => _AdminMainTabViewState();
}

class _AdminMainTabViewState extends State<AdminMainTabView> {
  @override
  void initState() {
    super.initState();
    context.read<AccountBloc>().add(AccountEvent.getAccountDetailEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AdminMainTabBloc>()),
        BlocProvider(
          create: (context) => getIt<HomeBloc>()..add(HomeEvent.getAPIList()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<FormTabBloc>()..add(FormTabEvent.getFormsList(true)),
        ),
      ],
      child: BlocBuilder<AdminMainTabBloc, AdminMainTabState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: getAppbar(state, context),
              body: GestureDetector(
                onTap: () => AppFocus.unfocus(context),
                child: IndexedStack(
                  index: state.pageIndex,
                  children: List<Widget>.generate(
                    context.read<AdminMainTabBloc>().pageList.length,
                    (int index) {
                      return Navigator(
                        onGenerateRoute: (RouteSettings settings) {
                          return onGenerateRoute(
                            settings,
                            context.read<AdminMainTabBloc>().pageList[index],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),

              bottomNavigationBar: AdminBottomNavigationWidget(),
            ),
          );
        },
      ),
    );
  }
}

getAppbar(AdminMainTabState state, BuildContext context) {
  switch (state.selectedTab) {
    case 0:
      return CustomAppBar(title: StringConstant.users, showBackBtn: false);
    case 1:
      return CustomAppBar(
        title: StringConstant.allFormDetails,
        showBackBtn: false,
      );
    case 2:
      return CustomAppBar(title: StringConstant.myAccount, showBackBtn: false);
    default:
  }
}

Route? onGenerateRoute(RouteSettings settings, String tabItem) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      if (tabItem == autoroute.AdminHomeView.name) {
        return AdminHomeView();
      } else if (tabItem == autoroute.FormDetailView.name) {
        return FormDetailView();
      } else if (tabItem == autoroute.MyAccountView.name) {
        return MyAccountView();
      }
      return Container();
    },
  );
}
