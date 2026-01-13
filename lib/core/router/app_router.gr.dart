// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:mbs_crm/infrastructure/form_dto/form_dto.dart' as _i11;
import 'package:mbs_crm/presentation/add_user/add_user.dart' as _i1;
import 'package:mbs_crm/presentation/dynamic_form/dynamic_form.dart' as _i2;
import 'package:mbs_crm/presentation/main/main_tab_view.dart' as _i4;
import 'package:mbs_crm/presentation/main/tabs/home/home_view.dart' as _i3;
import 'package:mbs_crm/presentation/main/tabs/my_account/my_account.dart'
    as _i5;
import 'package:mbs_crm/presentation/onboarding/onboarding.dart' as _i6;
import 'package:mbs_crm/presentation/sign_in/sign_in.dart' as _i7;
import 'package:mbs_crm/presentation/splash/splash_page.dart' as _i8;

/// generated route for
/// [_i1.AddUser]
class AddUser extends _i9.PageRouteInfo<void> {
  const AddUser({List<_i9.PageRouteInfo>? children})
    : super(AddUser.name, initialChildren: children);

  static const String name = 'AddUser';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddUser();
    },
  );
}

/// generated route for
/// [_i2.DynamicForm]
class DynamicForm extends _i9.PageRouteInfo<DynamicFormArgs> {
  DynamicForm({
    int? id,
    _i10.Key? key,
    required _i11.FormDTO form,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         DynamicForm.name,
         args: DynamicFormArgs(id: id, key: key, form: form),
         initialChildren: children,
       );

  static const String name = 'DynamicForm';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DynamicFormArgs>();
      return _i2.DynamicForm(id: args.id, key: args.key, form: args.form);
    },
  );
}

class DynamicFormArgs {
  const DynamicFormArgs({this.id, this.key, required this.form});

  final int? id;

  final _i10.Key? key;

  final _i11.FormDTO form;

  @override
  String toString() {
    return 'DynamicFormArgs{id: $id, key: $key, form: $form}';
  }
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i9.PageRouteInfo<void> {
  const HomeView({List<_i9.PageRouteInfo>? children})
    : super(HomeView.name, initialChildren: children);

  static const String name = 'HomeView';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeView();
    },
  );
}

/// generated route for
/// [_i4.MainTabView]
class MainTabView extends _i9.PageRouteInfo<MainTabViewArgs> {
  MainTabView({
    _i10.Key? key,
    bool isFromLogin = false,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         MainTabView.name,
         args: MainTabViewArgs(key: key, isFromLogin: isFromLogin),
         initialChildren: children,
       );

  static const String name = 'MainTabView';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MainTabViewArgs>(
        orElse: () => const MainTabViewArgs(),
      );
      return _i4.MainTabView(key: args.key, isFromLogin: args.isFromLogin);
    },
  );
}

class MainTabViewArgs {
  const MainTabViewArgs({this.key, this.isFromLogin = false});

  final _i10.Key? key;

  final bool isFromLogin;

  @override
  String toString() {
    return 'MainTabViewArgs{key: $key, isFromLogin: $isFromLogin}';
  }
}

/// generated route for
/// [_i5.MyAccountView]
class MyAccountView extends _i9.PageRouteInfo<void> {
  const MyAccountView({List<_i9.PageRouteInfo>? children})
    : super(MyAccountView.name, initialChildren: children);

  static const String name = 'MyAccountView';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.MyAccountView();
    },
  );
}

/// generated route for
/// [_i6.OnBoarding]
class OnBoarding extends _i9.PageRouteInfo<void> {
  const OnBoarding({List<_i9.PageRouteInfo>? children})
    : super(OnBoarding.name, initialChildren: children);

  static const String name = 'OnBoarding';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.OnBoarding();
    },
  );
}

/// generated route for
/// [_i7.SignIn]
class SignIn extends _i9.PageRouteInfo<void> {
  const SignIn({List<_i9.PageRouteInfo>? children})
    : super(SignIn.name, initialChildren: children);

  static const String name = 'SignIn';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.SignIn();
    },
  );
}

/// generated route for
/// [_i8.SplashPage]
class SplashPage extends _i9.PageRouteInfo<void> {
  const SplashPage({List<_i9.PageRouteInfo>? children})
    : super(SplashPage.name, initialChildren: children);

  static const String name = 'SplashPage';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.SplashPage();
    },
  );
}
