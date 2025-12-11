import 'package:mbs_crm/core/environment/base_config.dart';
import 'package:mbs_crm/core/environment/environment_configs.dart';

class EnvironmentConfig {
  factory EnvironmentConfig() {
    return _singleton;
  }

  EnvironmentConfig._internal();
  static final EnvironmentConfig _singleton = EnvironmentConfig._internal();

  static const String dev = 'dev';
  static const String staging = 'staging';
  static const String prod = 'prod';

  late BaseConfig config;
  void initConfig(String environment) {
    config = _getConfig(environment);
    _singleton.config;
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case EnvironmentConfig.prod:
        return ProdConfig();
      case EnvironmentConfig.staging:
        return StagingConfig();
      default:
        return DevConfig();
    }
  }
}
