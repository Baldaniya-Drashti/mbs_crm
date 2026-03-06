// ignore_for_file: prefer_const_constructors

import 'package:another_flushbar/flushbar.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

Flushbar showError({
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 5),
}) {
  return Flushbar(
    title: title,
    message: message,
    icon: Icon(Icons.warning, size: 28.0, color: Colors.white),
    leftBarIndicatorColor: Colors.red[300],
    backgroundColor: AppColors.red,
    duration: duration,
    flushbarPosition: FlushbarPosition.TOP,
  );
}

Flushbar showSuccess({
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 2),
  FlushbarPosition position = FlushbarPosition.TOP,
}) {
  return Flushbar(
    title: title,
    message: message,
    icon: Icon(Icons.check_circle, color: AppColors.white),
    leftBarIndicatorColor: AppColors.primary,
    backgroundColor: AppColors.primary,
    flushbarPosition: position,
    duration: duration,
  );
}

Flushbar noInternetToast({
  String? title,
  Duration duration = const Duration(seconds: 2),
}) {
  return Flushbar(
    title: title,
    message: StringConstant.pleaseCheckYourInternetConnectivity,
    messageColor: AppColors.red,
    borderRadius: BorderRadius.circular(50),
    margin: EdgeInsets.symmetric(horizontal: getSize(20)),
    backgroundColor: AppColors.backgroundRed,
    duration: duration,
    flushbarPosition: FlushbarPosition.BOTTOM,
    animationDuration: Duration(milliseconds: 800),
    forwardAnimationCurve: Curves.easeInOut,
  );
}

void showPdfLoader(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      backgroundColor: AppColors.white,
      content: Row(
        children: [
          CircularProgressIndicator(color: AppColors.primary),
          Gap(getSize(20)),
          Expanded(
            child: BaseText(
              text: StringConstant.generatingPdfPleaseWait,
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  );
}

void hidePdfLoader(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop();
}

void showFileLoader(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      backgroundColor: AppColors.white,
      content: Row(
        children: [
          CircularProgressIndicator(color: AppColors.primary),
          Gap(getSize(20)),
          Expanded(
            child: BaseText(
              text: StringConstant.downloadingFilePleaseWait,
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  );
}

void hideFileLoader(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop();
}
