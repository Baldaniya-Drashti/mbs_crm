import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/helper/sync_service.dart';
import 'package:mbs_crm/core/router/app_router.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/core/enum.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/sync_dialog/sync_progress_dialog.dart';

class SyncListener {
  static final SyncListener _instance = SyncListener._internal();
  factory SyncListener() => _instance;
  SyncListener._internal();

  static bool _isDialogShowing = false;

  GlobalKey<NavigatorState>? _navigatorKey;
  StreamSubscription? _subscription;

  void initialize() {
    _navigatorKey = getIt<AppRouter>().navigatorKey;
    _listenToSync();
  }

  void _listenToSync() {
    final syncService = getIt<SyncService>();

    _subscription = syncService.progressStream.listen((progress) {
      if (progress.stage == SyncStage.syncingLocal ||
          progress.stage == SyncStage.fetchingServer) {
        _showSyncDialog();
      } else {
        _dismissSyncDialog();
      }
    });
  }

  void _showSyncDialog() {
    if (_isDialogShowing || _navigatorKey?.currentContext == null) return;

    _isDialogShowing = true;

    showDialog(
      context: _navigatorKey!.currentContext!,
      barrierDismissible: false,
      builder: (_) => const SyncProgressDialog(),
    ).then((_) {
      _isDialogShowing = false;
    });
  }

  void _dismissSyncDialog() {
    if (!_isDialogShowing || _navigatorKey?.currentContext == null) return;

    _isDialogShowing = false;
    Navigator.of(_navigatorKey!.currentContext!, rootNavigator: true).pop();
  }

  void dispose() {
    _subscription?.cancel();
  }
}
