// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:mbs_crm/core/helper/sync_service.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/injection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class NetworkListener {
  static final NetworkListener _instance = NetworkListener._internal();
  factory NetworkListener() => _instance;
  NetworkListener._internal();

  static VoidCallback? _queuedNavigation;

  void initialize() {
    _listenToNetworkChanges();
  }

  Stream<bool> onStatusChange() async* {
    // emit current state first
    yield await isOnline();

    yield* Connectivity().onConnectivityChanged.asyncMap((result) async {
      if (result.contains(ConnectivityResult.none)) {
        return false;
      }
      return await isOnline();
    });
  }

  Future<bool> isOnline() async {
    final result = await Connectivity().checkConnectivity();
    return !result.contains(ConnectivityResult.none);
  }

  void _listenToNetworkChanges() {
    Connectivity().onConnectivityChanged.listen((
      List<ConnectivityResult> results,
    ) async {
      final hasInternet = !results.contains(ConnectivityResult.none);
      if (!hasInternet) return;

      final token = await getToken();
      if (token.isEmpty) return;

      final userType = await getUserType();

      if (userType == 2) {
        getIt<SyncService>().runFullSyncIfOnline();

        final context = getIt<AppRouter>().navigatorKey.currentContext!;
        context.read<HomeBloc>().add(HomeEvent.getFormsList(true));
      }

      print("Pending Forms Syncing");
      _queuedNavigation?.call();
      _queuedNavigation = null;
    });
  }
}
