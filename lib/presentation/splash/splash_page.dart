// ignore_for_file: use_build_context_synchronously
import 'package:mbs_crm/application/auth_status/auth_status_bloc.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/sync_dialog/sync_listener.dart';

@RoutePage(name: 'splashPage')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: BlocListener<AuthStatusBloc, AuthStatusState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (value) async {
              WidgetsBinding.instance.addPostFrameCallback((_) async {
                final userType = await getUserType();

                if (userType == 2) {
                  SyncListener().initialize();
                }
              });
              await context.router.replace(
                PageRouteInfo(
                  (await getUserType() == 1)
                      ? AdminMainTabView.name
                      : UserMainTabView.name,
                ),
              );
            },
            unAuthenticated: (value) async {
              await context.router.replace(PageRouteInfo(OnBoarding.name));
            },
          );
        },
        child: Scaffold(
          backgroundColor: AppColors.primary,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.7, 1],
                colors: [AppColors.primary, AppColors.white],
              ),
            ),
            child: Center(
              child: BaseText(
                text: StringConstant.mbsCRM.toUpperCase(),
                fontSize: 50,
                shadows: [Shadow(color: AppColors.primary, blurRadius: 10)],
                textColor: AppColors.white,
                fontWeight: FontWeight.w700,
                fontFamily: FontConstant.jost,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
