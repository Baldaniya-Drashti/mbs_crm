import 'package:mbs_crm/core/environment/base_config.dart';
import 'package:mbs_crm/core/environment/environment.dart';
import 'package:mbs_crm/core/environment/environment_configs.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  getIt.init(environment: env);

  if (env == EnvironmentConfig.dev) {
    getIt.registerSingleton<BaseConfig>(DevConfig());
  } else if (env == EnvironmentConfig.staging) {
    getIt.registerSingleton<BaseConfig>(StagingConfig());
  } else if (env == EnvironmentConfig.prod) {
    getIt.registerSingleton<BaseConfig>(ProdConfig());
  }
}
