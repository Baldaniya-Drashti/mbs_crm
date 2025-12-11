// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'dart:async';

import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/utils/app_focus.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final double borderRadius;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final VoidCallback onPressed;
  final String buttonText;
  final Widget? customWidget;
  final List<BoxShadow>? shadows;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? buttonTextColor;
  final double? buttonFontSize;
  final FontWeight? buttonFontWeight;
  final Widget? widget;
  final bool isSubmitting;
  const CommonButton({
    Key? key,
    required this.onPressed,
    this.customWidget,
    this.borderRadius = 50,
    this.width,
    this.height,
    this.shadows,
    this.gradient,
    this.backgroundColor,
    required this.buttonText,
    this.buttonTextColor,
    this.buttonFontSize,
    this.buttonFontWeight,
    this.borderColor,
    this.widget,
    this.isSubmitting = false,
  }) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  bool isButtonDisabled = false;
  Timer? buttonTimer;
  void _handleButtonTap() {
    if (!isButtonDisabled) {
      setState(() {
        isButtonDisabled = true;
      });
      AppFocus.unfocus(context);
      widget.onPressed();
      // Enable the button after a specified duration (e.g., 3 seconds).
      buttonTimer = Timer(Duration(seconds: 3), () {
        setState(() {
          isButtonDisabled = false;
        });
      });
    }
  }

  @override
  void dispose() {
    buttonTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.isSubmitting || isButtonDisabled
          ? null
          : _handleButtonTap,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: widget.borderColor ?? Colors.transparent),
        elevation: 0,
        shadowColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        backgroundColor: widget.backgroundColor ?? AppColors.primary,
        disabledBackgroundColor: widget.backgroundColor ?? AppColors.primary,
        padding: EdgeInsets.zero,
        fixedSize: Size(
          getSize(widget.width ?? MediaQuery.of(context).size.width),
          getSize(widget.height ?? 55),
        ),
        visualDensity: VisualDensity(
          vertical: VisualDensity.minimumDensity,
          horizontal: VisualDensity.minimumDensity,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getSize(widget.borderRadius)),
        ),
      ),
      child: widget.isSubmitting
          ? SizedBox(
              height: getSize(20),
              width: getSize(20),
              child: CircularProgressIndicator(color: AppColors.white),
            )
          : widget.customWidget ??
                BaseText(
                  text: widget.buttonText.toUpperCase(),
                  fontSize: widget.buttonFontSize ?? 16,
                  textAlign: TextAlign.center,
                  fontFamily: FontConstant.jost,
                  fontWeight: widget.buttonFontWeight ?? FontWeight.w600,
                  textColor: widget.buttonTextColor ?? Colors.white,
                ),
    );
  }
}
