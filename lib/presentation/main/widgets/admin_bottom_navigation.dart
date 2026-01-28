// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:mbs_crm/application/main/admin_main_tab_bloc/admin_main_tab_bloc.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/constants/svg_image_constants.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdminBottomNavigationWidget extends StatelessWidget {
  AdminBottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminMainTabBloc, AdminMainTabState>(
      builder: (context, state) {
        return Theme(
          data: ThemeData(splashFactory: NoSplash.splashFactory),
          child: AnimatedBottomNavigationBar.builder(
            itemCount: 3,
            activeIndex: state.selectedTab,
            onTap: (index) {
              context.read<AdminMainTabBloc>().add(
                AdminMainTabEvent.tabChange(index),
              );
            },
            tabBuilder: (index, isActive) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    tabIconList[index],
                    height: getSize(24),
                    width: getSize(24),
                  ),
                  SizedBox(height: getSize(5)),
                  BaseText(
                    text: tabLabelList[index],
                    fontSize: 12,
                    fontFamily: "Sarabun",
                    textColor: isActive
                        ? AppColors.primary
                        : AppColors.black.withValues(alpha: 0.50),
                    fontWeight: FontWeight.w600,
                  ),
                ],
              );
            },
            height: getSize(90),
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.sharpEdge,
            shadow: BoxShadow(
              color: AppColors.lightGrey,
              blurRadius: getSize(10),
              blurStyle: BlurStyle.normal,
            ),
            elevation: 0,
            leftCornerRadius: getSize(35),
            rightCornerRadius: getSize(35),
          ),
        );
      },
    );
  }

  List tabIconList = [
    SvgImageConstant.home,
    SvgImageConstant.form,
    SvgImageConstant.person,
  ];

  List<String> tabLabelList = [
    StringConstant.home,
    StringConstant.allForms,
    StringConstant.myAccount,
  ];

  Widget icon(String icon) {
    return SvgPicture.asset(icon, height: getSize(22), width: getSize(20));
  }
}
