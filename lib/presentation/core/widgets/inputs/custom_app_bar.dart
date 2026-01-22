// ignore_for_file: prefer_const_constructors

import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Color? titleColor;
  final Widget? leading;
  final double elevation;
  final String title;
  final Widget? customTitle;
  final List<Widget>? actions;
  final double? leadingWidth;
  final bool isRoundedCorner;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;
  final Function()? onPressed;
  final double? titleSpacing;
  final bool showBackBtn;
  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle,
    this.leading,
    this.actions,
    this.leadingWidth,
    this.isRoundedCorner = true,
    this.elevation = 0.0,
    this.customTitle,
    this.onPressed,
    this.bottom,
    this.titleSpacing = 0,
    this.showBackBtn = true,
    this.backgroundColor = AppColors.primary,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      automaticallyImplyLeading: showBackBtn,
      shadowColor: Color(0xFFE1E1E1),
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: elevation,
      titleSpacing: titleSpacing,
      leadingWidth: leadingWidth,
      leading: (showBackBtn)
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: titleColor ?? AppColors.white,
              ),
            )
          : leading,
      shape: isRoundedCorner
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(getSize(12)),
                bottomRight: Radius.circular(getSize(12)),
              ),
            )
          : null,
      title:
          customTitle ??
          BaseText(
            fontSize: 20,
            text: title,
            maxLines: 2,
            textColor: titleColor ?? AppColors.white,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w600,
            fontFamily: FontConstant.jost,
          ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      actions: actions,
      centerTitle: centerTitle ?? true,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
