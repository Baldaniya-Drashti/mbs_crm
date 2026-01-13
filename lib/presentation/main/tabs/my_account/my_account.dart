// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/main/tabs/my_account/widget/logout_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mbs_crm/application/auth_status/auth_status_bloc.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'MyAccountView')
class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        state.map(
          initial: (value) {},
          authenticated: (value) {},
          unAuthenticated: (value) {
            print("Logout called!");
            context.router.replaceAll([PageRouteInfo(OnBoarding.name)]);
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getSize(20),
          vertical: getSize(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  customTile(
                    icon: Icons.logout_rounded,
                    title: StringConstant.logout,
                    isLogout: true,
                    onTap: () {
                      LogOutDialog().logoutDialog(
                        context,
                        onPressedAccept: () {
                          context.router.maybePop().then(
                            (value) => context.read<AuthStatusBloc>().add(
                              AuthStatusEvent.signedOut(),
                            ),
                          );
                        },
                        onPressedReject: () {
                          context.router.maybePop();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customTile({
    required String title,
    required IconData icon,
    bool isLogout = false,
    bool isLogin = false,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: getSize(10)),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: AppColors.lightGrey, blurRadius: 10)],
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: (isLogout)
                ? AppColors.red
                : (isLogin)
                ? AppColors.primary
                : AppColors.black,
            size: getSize(25),
          ),
          title: BaseText(
            text: title,
            fontWeight: FontWeight.w600,
            textColor: (isLogout)
                ? AppColors.red
                : (isLogin)
                ? AppColors.primary
                : null,
          ),
          trailing: (isLogout)
              ? null
              : Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.grey,
                  size: getSize(20),
                ),
        ),
      ),
    );
  }
}
