import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/main/main_tab/main_tab_bloc.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/admin_home_view/admin_home_view.dart';
import 'package:mbs_crm/presentation/main/tabs/home/widgets/user_home_view/user_home_view.dart';

@RoutePage(name: 'HomeView')
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return (context.read<MainTabBloc>().state.currentUserType == 1)
        ? const AdminHomeView()
        : const UserHomeView();
  }
}
