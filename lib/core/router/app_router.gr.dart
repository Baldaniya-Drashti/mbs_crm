// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:mbs_crm/presentation/dynamic_form/dynamic_form.dart' as _i1;
import 'package:mbs_crm/presentation/home/home_view.dart' as _i2;
import 'package:mbs_crm/presentation/onboarding/onboarding.dart' as _i3;
import 'package:mbs_crm/presentation/sign_in/sign_in.dart' as _i4;
import 'package:mbs_crm/presentation/splash/splash_page.dart' as _i5;

/// generated route for
/// [_i1.DynamicForm]
class DynamicForm extends _i6.PageRouteInfo<DynamicFormArgs> {
  DynamicForm({
    int? id,
    _i7.Key? key,
    required String formType,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         DynamicForm.name,
         args: DynamicFormArgs(id: id, key: key, formType: formType),
         initialChildren: children,
       );

  static const String name = 'DynamicForm';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DynamicFormArgs>();
      return _i1.DynamicForm(
        id: args.id,
        key: args.key,
        formType: args.formType,
      );
    },
  );
}

class DynamicFormArgs {
  const DynamicFormArgs({this.id, this.key, required this.formType});

  final int? id;

  final _i7.Key? key;

  final String formType;

  @override
  String toString() {
    return 'DynamicFormArgs{id: $id, key: $key, formType: $formType}';
  }
}

/// generated route for
/// [_i2.HomeView]
class HomeView extends _i6.PageRouteInfo<void> {
  const HomeView({List<_i6.PageRouteInfo>? children})
    : super(HomeView.name, initialChildren: children);

  static const String name = 'HomeView';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeView();
    },
  );
}

/// generated route for
/// [_i3.OnBoarding]
class OnBoarding extends _i6.PageRouteInfo<void> {
  const OnBoarding({List<_i6.PageRouteInfo>? children})
    : super(OnBoarding.name, initialChildren: children);

  static const String name = 'OnBoarding';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnBoarding();
    },
  );
}

/// generated route for
/// [_i4.SignIn]
class SignIn extends _i6.PageRouteInfo<void> {
  const SignIn({List<_i6.PageRouteInfo>? children})
    : super(SignIn.name, initialChildren: children);

  static const String name = 'SignIn';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignIn();
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashPage extends _i6.PageRouteInfo<void> {
  const SplashPage({List<_i6.PageRouteInfo>? children})
    : super(SplashPage.name, initialChildren: children);

  static const String name = 'SplashPage';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashPage();
    },
  );
}
