import 'dart:async';
import 'package:mbs_crm/core/environment/environment.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/helper/sync_service.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/core/app_widget.dart';
import 'package:mbs_crm/presentation/core/restart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/sync_dialog/sync_listener.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    getIt.registerSingleton<AppRouter>(AppRouter());

    await dotenv.load(fileName: ".env");
    configureInjection(Environment.dev);
    String environment = const String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: Environment.dev,
    );
    EnvironmentConfig().initConfig(environment);

    NetworkListener().initialize();
    SyncListener().initialize();

    runApp(const RestartWidget(child: AppWidget()));
  }, (error, stack) {});
}
