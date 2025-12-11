// ignore_for_file: deprecated_member_use

import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/injection.dart';
import 'package:flutter/material.dart';

final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;
Size size =
    WidgetsBinding.instance.window.physicalSize /
    WidgetsBinding.instance.window.devicePixelRatio;

/// This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  // return px * (size.width / 375);
  double screenWidth = MediaQuery.of(currentContext).size.width;
  return px * (screenWidth / 375);
}

/// This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  /* num statusBar = MediaQueryData.fromView(
    WidgetsBinding.instance.window,
  ).viewPadding.top;
  num screenHeight = size.height - statusBar;
  return px * (screenHeight / 812); */
  double screenHeight = MediaQuery.of(currentContext).size.height;
  return px * (screenHeight / 812);
}

bool isFullScreenDevice(BuildContext context) {
  if (MediaQueryData.fromView(View.of(context)).viewPadding.bottom == 0) {
    return false;
  } else {
    return true;
  }
}

/// This method is used to set text font size according to Viewport
double getFontSize(double px) {
  // return px.sp;
  /* var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  } */

  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  return height < width ? height : width;
}

/// This method is used to set smallest px in image height and width
double getSize(double px) {
  /* var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  } */

  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  return height < width ? height : width;
}

/* import 'package:fever_fm/core/router/app_router.dart';
import 'package:fever_fm/injection.dart';
import 'package:flutter/material.dart';

final currentContext = getIt<AppRouter>().navigatorKey.currentContext!;
Size _screenSize() {
  return MediaQuery.of(currentContext).size;
}

double getHorizontalSize(double px) {
  return px * (_screenSize().width / 375);
}

double getVerticalSize(double px) {
  final statusBar = MediaQuery.of(currentContext).viewPadding.top;
  final screenHeight = _screenSize().height - statusBar;
  return px * (screenHeight / 812);
}

double getFontSize(double px) {
  final height = getVerticalSize(px);
  final width = getHorizontalSize(px);
  return height < width ? height : width;
}

double getSize(double px) {
  final height = getVerticalSize(px);
  final width = getHorizontalSize(px);
  return height < width ? height : width;
} */
