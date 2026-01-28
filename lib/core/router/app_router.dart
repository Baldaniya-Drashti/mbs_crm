// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  CustomRoute _custom({
    required PageInfo page,
    List<AutoRoute>? children,
    bool initial = false,
    final RouteTransitionsBuilder?
    transition /* = TransitionsBuilders.slideLeft */,
    final int? duration = 200,
    final int? reverseDuration = 200,
  }) {
    return CustomRoute(
      page: page,
      initial: initial,
      transitionsBuilder: transition,
      durationInMilliseconds: duration,
      reverseDurationInMilliseconds: reverseDuration,
      children: children,
    );
  }

  @override
  List<AutoRoute> get routes => [
    _custom(page: SplashPage.page, initial: true),
    _custom(page: SignIn.page),
    _custom(
      page: OnBoarding.page,
      transition: TransitionsBuilders.slideBottom,
      duration: 300,
    ),
    _custom(page: DynamicForm.page),
    _custom(page: UserMainTabView.page),
    _custom(page: AdminMainTabView.page),
    _custom(page: FormDetailView.page),
    _custom(page: MyAccountView.page),
    _custom(page: AddUser.page),
    _custom(page: AdminFormList.page),
  ];
}
