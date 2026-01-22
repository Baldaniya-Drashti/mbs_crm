// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:mbs_crm/core/helper/form_identifier.dart' as _i14;
import 'package:mbs_crm/presentation/add_user/add_user.dart' as _i1;
import 'package:mbs_crm/presentation/dynamic_form/dynamic_form.dart' as _i4;
import 'package:mbs_crm/presentation/main/admin_main_tab_view/admin_main_tab_view.dart'
    as _i3;
import 'package:mbs_crm/presentation/main/tabs/form_tab_view/form_tab_view.dart'
    as _i5;
import 'package:mbs_crm/presentation/main/tabs/home/widgets/admin_home_view/admin_home_view.dart'
    as _i2;
import 'package:mbs_crm/presentation/main/tabs/home/widgets/user_home_view/user_home_view.dart'
    as _i10;
import 'package:mbs_crm/presentation/main/tabs/my_account/my_account.dart'
    as _i6;
import 'package:mbs_crm/presentation/main/user_main_tab_view/user_main_tab_view.dart'
    as _i11;
import 'package:mbs_crm/presentation/onboarding/onboarding.dart' as _i7;
import 'package:mbs_crm/presentation/sign_in/sign_in.dart' as _i8;
import 'package:mbs_crm/presentation/splash/splash_page.dart' as _i9;

/// generated route for
/// [_i1.AddUser]
class AddUser extends _i12.PageRouteInfo<AddUserArgs> {
  AddUser({_i13.Key? key, int? id, List<_i12.PageRouteInfo>? children})
    : super(
        AddUser.name,
        args: AddUserArgs(key: key, id: id),
        initialChildren: children,
      );

  static const String name = 'AddUser';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddUserArgs>(orElse: () => const AddUserArgs());
      return _i1.AddUser(key: args.key, id: args.id);
    },
  );
}

class AddUserArgs {
  const AddUserArgs({this.key, this.id});

  final _i13.Key? key;

  final int? id;

  @override
  String toString() {
    return 'AddUserArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.AdminHomeView]
class AdminHomeView extends _i12.PageRouteInfo<void> {
  const AdminHomeView({List<_i12.PageRouteInfo>? children})
    : super(AdminHomeView.name, initialChildren: children);

  static const String name = 'AdminHomeView';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.AdminHomeView();
    },
  );
}

/// generated route for
/// [_i3.AdminMainTabView]
class AdminMainTabView extends _i12.PageRouteInfo<AdminMainTabViewArgs> {
  AdminMainTabView({
    _i13.Key? key,
    bool isFromLogin = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         AdminMainTabView.name,
         args: AdminMainTabViewArgs(key: key, isFromLogin: isFromLogin),
         initialChildren: children,
       );

  static const String name = 'AdminMainTabView';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminMainTabViewArgs>(
        orElse: () => const AdminMainTabViewArgs(),
      );
      return _i3.AdminMainTabView(key: args.key, isFromLogin: args.isFromLogin);
    },
  );
}

class AdminMainTabViewArgs {
  const AdminMainTabViewArgs({this.key, this.isFromLogin = false});

  final _i13.Key? key;

  final bool isFromLogin;

  @override
  String toString() {
    return 'AdminMainTabViewArgs{key: $key, isFromLogin: $isFromLogin}';
  }
}

/// generated route for
/// [_i4.DynamicForm]
class DynamicForm extends _i12.PageRouteInfo<DynamicFormArgs> {
  DynamicForm({
    _i14.FormIdentifier? formId,
    _i13.Key? key,
    required String formSlug,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         DynamicForm.name,
         args: DynamicFormArgs(formId: formId, key: key, formSlug: formSlug),
         initialChildren: children,
       );

  static const String name = 'DynamicForm';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DynamicFormArgs>();
      return _i4.DynamicForm(
        formId: args.formId,
        key: args.key,
        formSlug: args.formSlug,
      );
    },
  );
}

class DynamicFormArgs {
  const DynamicFormArgs({this.formId, this.key, required this.formSlug});

  final _i14.FormIdentifier? formId;

  final _i13.Key? key;

  final String formSlug;

  @override
  String toString() {
    return 'DynamicFormArgs{formId: $formId, key: $key, formSlug: $formSlug}';
  }
}

/// generated route for
/// [_i5.FormDetailView]
class FormDetailView extends _i12.PageRouteInfo<void> {
  const FormDetailView({List<_i12.PageRouteInfo>? children})
    : super(FormDetailView.name, initialChildren: children);

  static const String name = 'FormDetailView';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.FormDetailView();
    },
  );
}

/// generated route for
/// [_i6.MyAccountView]
class MyAccountView extends _i12.PageRouteInfo<void> {
  const MyAccountView({List<_i12.PageRouteInfo>? children})
    : super(MyAccountView.name, initialChildren: children);

  static const String name = 'MyAccountView';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.MyAccountView();
    },
  );
}

/// generated route for
/// [_i7.OnBoarding]
class OnBoarding extends _i12.PageRouteInfo<void> {
  const OnBoarding({List<_i12.PageRouteInfo>? children})
    : super(OnBoarding.name, initialChildren: children);

  static const String name = 'OnBoarding';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.OnBoarding();
    },
  );
}

/// generated route for
/// [_i8.SignIn]
class SignIn extends _i12.PageRouteInfo<void> {
  const SignIn({List<_i12.PageRouteInfo>? children})
    : super(SignIn.name, initialChildren: children);

  static const String name = 'SignIn';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.SignIn();
    },
  );
}

/// generated route for
/// [_i9.SplashPage]
class SplashPage extends _i12.PageRouteInfo<void> {
  const SplashPage({List<_i12.PageRouteInfo>? children})
    : super(SplashPage.name, initialChildren: children);

  static const String name = 'SplashPage';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.SplashPage();
    },
  );
}

/// generated route for
/// [_i10.UserHomeView]
class UserHomeView extends _i12.PageRouteInfo<void> {
  const UserHomeView({List<_i12.PageRouteInfo>? children})
    : super(UserHomeView.name, initialChildren: children);

  static const String name = 'UserHomeView';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.UserHomeView();
    },
  );
}

/// generated route for
/// [_i11.UserMainTabView]
class UserMainTabView extends _i12.PageRouteInfo<UserMainTabViewArgs> {
  UserMainTabView({
    _i13.Key? key,
    bool isFromLogin = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         UserMainTabView.name,
         args: UserMainTabViewArgs(key: key, isFromLogin: isFromLogin),
         initialChildren: children,
       );

  static const String name = 'UserMainTabView';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserMainTabViewArgs>(
        orElse: () => const UserMainTabViewArgs(),
      );
      return _i11.UserMainTabView(key: args.key, isFromLogin: args.isFromLogin);
    },
  );
}

class UserMainTabViewArgs {
  const UserMainTabViewArgs({this.key, this.isFromLogin = false});

  final _i13.Key? key;

  final bool isFromLogin;

  @override
  String toString() {
    return 'UserMainTabViewArgs{key: $key, isFromLogin: $isFromLogin}';
  }
}
