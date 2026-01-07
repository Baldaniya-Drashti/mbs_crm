// ignore_for_file: prefer_const_constructors

import 'package:another_flushbar/flushbar.dart';
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
