// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mbs_crm/application/account_bloc/account_bloc.dart' as _i70;
import 'package:mbs_crm/application/auth_status/auth_status_bloc.dart' as _i493;
import 'package:mbs_crm/application/dynamic_form_bloc/dynamic_form_bloc.dart'
    as _i53;
import 'package:mbs_crm/application/home_bloc/home_bloc.dart' as _i1046;
import 'package:mbs_crm/application/onboarding_bloc/onboarding_bloc.dart'
    as _i273;
import 'package:mbs_crm/application/sign_in_bloc/sign_in_bloc.dart' as _i487;
import 'package:mbs_crm/core/network/api_service.dart' as _i641;
import 'package:mbs_crm/domain/auth/auth_facade.dart' as _i520;
import 'package:mbs_crm/domain/auth/i_auth_facade.dart' as _i774;
import 'package:mbs_crm/domain/main/i_main_facade.dart' as _i634;
import 'package:mbs_crm/domain/main/main_facade.dart' as _i623;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i273.OnboardingBloc>(() => _i273.OnboardingBloc());
    gh.lazySingleton<_i641.ApiService>(() => _i641.ApiService());
    gh.lazySingleton<_i634.IMainFacade>(
      () => _i623.MainFacade(apiService: gh<_i641.ApiService>()),
    );
    gh.lazySingleton<_i774.IAuthFacade>(
      () => _i520.AuthFacade(gh<_i641.ApiService>()),
    );
    gh.factory<_i53.DynamicFormBloc>(
      () => _i53.DynamicFormBloc(gh<_i634.IMainFacade>()),
    );
    gh.factory<_i1046.HomeBloc>(() => _i1046.HomeBloc(gh<_i634.IMainFacade>()));
    gh.factory<_i487.SignInBloc>(
      () => _i487.SignInBloc(gh<_i774.IAuthFacade>()),
    );
    gh.factory<_i493.AuthStatusBloc>(
      () => _i493.AuthStatusBloc(gh<_i774.IAuthFacade>()),
    );
    gh.factory<_i70.AccountBloc>(
      () => _i70.AccountBloc(gh<_i774.IAuthFacade>()),
    );
    return this;
  }
}
