// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/injection.dart';
/* 
Size size =
    WidgetsBinding.instance.window.physicalSize /
    WidgetsBinding.instance.window.devicePixelRatio;

/// This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  double screenWidth = MediaQuery.of(currentContext).size.width;
  return px * (screenWidth / 375);
}

/// This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
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
  /*  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  return height < width ? height : width; */
}

/// This method is used to set smallest px in image height and width
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  return height < width ? height : width;
}
 */

final _currentContext = getIt<AppRouter>().navigatorKey.currentContext!;

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  Size size =
      WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;
  // return px.w;
  return px * (size.width / 375);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  Size size =
      WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;
  // return px.h;
  num statusBar = MediaQueryData.fromView(
    WidgetsBinding.instance.window,
  ).viewPadding.top;
  num screenHeight = size.height - statusBar;
  return px * (screenHeight / 812);
}

bool isFullScreenDevice(BuildContext context) {
  if (MediaQueryData.fromView(View.of(context)).viewPadding.bottom == 0) {
    return false;
  } else {
    return true;
  }
}

///This method is used to set text font size according to Viewport
double getFontSize(double px) {
  final context = _currentContext;
  final textScale = MediaQuery.textScaleFactorOf(context);
  return px * textScale;

  // return px.sp;
}

///This method is used to set smallest px in image height and width
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

bool isLandscape() {
  final context = getIt<AppRouter>().navigatorKey.currentContext!;
  return MediaQuery.of(context).orientation == Orientation.landscape;
}
