// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:mbs_crm/core/helper/form_identifier.dart' as _i16;
import 'package:mbs_crm/infrastructure/user_dto/user_dto.dart' as _i15;
import 'package:mbs_crm/presentation/add_user/add_user.dart' as _i1;
import 'package:mbs_crm/presentation/admin_form_list_view/admin_form_list_view.dart'
    as _i2;
import 'package:mbs_crm/presentation/dynamic_form/dynamic_form.dart' as _i5;
import 'package:mbs_crm/presentation/main/admin_main_tab_view/admin_main_tab_view.dart'
    as _i4;
import 'package:mbs_crm/presentation/main/tabs/form_tab_view/form_tab_view.dart'
    as _i6;
import 'package:mbs_crm/presentation/main/tabs/home/admin_home_view/admin_home_view.dart'
    as _i3;
import 'package:mbs_crm/presentation/main/tabs/home/user_home_view/user_home_view.dart'
    as _i11;
import 'package:mbs_crm/presentation/main/tabs/my_account/my_account.dart'
    as _i7;
import 'package:mbs_crm/presentation/main/user_main_tab_view/user_main_tab_view.dart'
    as _i12;
import 'package:mbs_crm/presentation/onboarding/onboarding.dart' as _i8;
import 'package:mbs_crm/presentation/sign_in/sign_in.dart' as _i9;
import 'package:mbs_crm/presentation/splash/splash_page.dart' as _i10;

/// generated route for
/// [_i1.AddUser]
class AddUser extends _i13.PageRouteInfo<AddUserArgs> {
  AddUser({_i14.Key? key, int? id, List<_i13.PageRouteInfo>? children})
    : super(
        AddUser.name,
        args: AddUserArgs(key: key, id: id),
        initialChildren: children,
      );

  static const String name = 'AddUser';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddUserArgs>(orElse: () => const AddUserArgs());
      return _i1.AddUser(key: args.key, id: args.id);
    },
  );
}

class AddUserArgs {
  const AddUserArgs({this.key, this.id});

  final _i14.Key? key;

  final int? id;

  @override
  String toString() {
    return 'AddUserArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.AdminFormList]
class AdminFormList extends _i13.PageRouteInfo<AdminFormListArgs> {
  AdminFormList({
    _i14.Key? key,
    _i15.UserDTO? user,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         AdminFormList.name,
         args: AdminFormListArgs(key: key, user: user),
         initialChildren: children,
       );

  static const String name = 'AdminFormList';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminFormListArgs>(
        orElse: () => const AdminFormListArgs(),
      );
      return _i2.AdminFormList(key: args.key, user: args.user);
    },
  );
}

class AdminFormListArgs {
  const AdminFormListArgs({this.key, this.user});

  final _i14.Key? key;

  final _i15.UserDTO? user;

  @override
  String toString() {
    return 'AdminFormListArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i3.AdminHomeView]
class AdminHomeView extends _i13.PageRouteInfo<void> {
  const AdminHomeView({List<_i13.PageRouteInfo>? children})
    : super(AdminHomeView.name, initialChildren: children);

  static const String name = 'AdminHomeView';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.AdminHomeView();
    },
  );
}

/// generated route for
/// [_i4.AdminMainTabView]
class AdminMainTabView extends _i13.PageRouteInfo<AdminMainTabViewArgs> {
  AdminMainTabView({
    _i14.Key? key,
    bool isFromLogin = false,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         AdminMainTabView.name,
         args: AdminMainTabViewArgs(key: key, isFromLogin: isFromLogin),
         initialChildren: children,
       );

  static const String name = 'AdminMainTabView';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminMainTabViewArgs>(
        orElse: () => const AdminMainTabViewArgs(),
      );
      return _i4.AdminMainTabView(key: args.key, isFromLogin: args.isFromLogin);
    },
  );
}

class AdminMainTabViewArgs {
  const AdminMainTabViewArgs({this.key, this.isFromLogin = false});

  final _i14.Key? key;

  final bool isFromLogin;

  @override
  String toString() {
    return 'AdminMainTabViewArgs{key: $key, isFromLogin: $isFromLogin}';
  }
}

/// generated route for
/// [_i5.DynamicForm]
class DynamicForm extends _i13.PageRouteInfo<DynamicFormArgs> {
  DynamicForm({
    _i16.FormIdentifier? formId,
    _i14.Key? key,
    required String formSlug,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         DynamicForm.name,
         args: DynamicFormArgs(formId: formId, key: key, formSlug: formSlug),
         initialChildren: children,
       );

  static const String name = 'DynamicForm';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DynamicFormArgs>();
      return _i5.DynamicForm(
        formId: args.formId,
        key: args.key,
        formSlug: args.formSlug,
      );
    },
  );
}

class DynamicFormArgs {
  const DynamicFormArgs({this.formId, this.key, required this.formSlug});

  final _i16.FormIdentifier? formId;

  final _i14.Key? key;

  final String formSlug;

  @override
  String toString() {
    return 'DynamicFormArgs{formId: $formId, key: $key, formSlug: $formSlug}';
  }
}

/// generated route for
/// [_i6.FormDetailView]
class FormDetailView extends _i13.PageRouteInfo<void> {
  const FormDetailView({List<_i13.PageRouteInfo>? children})
    : super(FormDetailView.name, initialChildren: children);

  static const String name = 'FormDetailView';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.FormDetailView();
    },
  );
}

/// generated route for
/// [_i7.MyAccountView]
class MyAccountView extends _i13.PageRouteInfo<void> {
  const MyAccountView({List<_i13.PageRouteInfo>? children})
    : super(MyAccountView.name, initialChildren: children);

  static const String name = 'MyAccountView';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i7.MyAccountView();
    },
  );
}

/// generated route for
/// [_i8.OnBoarding]
class OnBoarding extends _i13.PageRouteInfo<void> {
  const OnBoarding({List<_i13.PageRouteInfo>? children})
    : super(OnBoarding.name, initialChildren: children);

  static const String name = 'OnBoarding';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.OnBoarding();
    },
  );
}

/// generated route for
/// [_i9.SignIn]
class SignIn extends _i13.PageRouteInfo<void> {
  const SignIn({List<_i13.PageRouteInfo>? children})
    : super(SignIn.name, initialChildren: children);

  static const String name = 'SignIn';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.SignIn();
    },
  );
}

/// generated route for
/// [_i10.SplashPage]
class SplashPage extends _i13.PageRouteInfo<void> {
  const SplashPage({List<_i13.PageRouteInfo>? children})
    : super(SplashPage.name, initialChildren: children);

  static const String name = 'SplashPage';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.SplashPage();
    },
  );
}

/// generated route for
/// [_i11.UserHomeView]
class UserHomeView extends _i13.PageRouteInfo<void> {
  const UserHomeView({List<_i13.PageRouteInfo>? children})
    : super(UserHomeView.name, initialChildren: children);

  static const String name = 'UserHomeView';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.UserHomeView();
    },
  );
}

/// generated route for
/// [_i12.UserMainTabView]
class UserMainTabView extends _i13.PageRouteInfo<UserMainTabViewArgs> {
  UserMainTabView({
    _i14.Key? key,
    bool isFromLogin = false,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         UserMainTabView.name,
         args: UserMainTabViewArgs(key: key, isFromLogin: isFromLogin),
         initialChildren: children,
       );

  static const String name = 'UserMainTabView';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserMainTabViewArgs>(
        orElse: () => const UserMainTabViewArgs(),
      );
      return _i12.UserMainTabView(key: args.key, isFromLogin: args.isFromLogin);
    },
  );
}

class UserMainTabViewArgs {
  const UserMainTabViewArgs({this.key, this.isFromLogin = false});

  final _i14.Key? key;

  final bool isFromLogin;

  @override
  String toString() {
    return 'UserMainTabViewArgs{key: $key, isFromLogin: $isFromLogin}';
  }
}
