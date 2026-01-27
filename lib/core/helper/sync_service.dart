import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/constants/storage_constants.dart';
import 'package:mbs_crm/core/database/app_db.dart';
import 'package:mbs_crm/core/database/db_repository.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/helper/sync_progress.dart';
import 'package:mbs_crm/domain/main/i_main_facade.dart';
import 'package:mbs_crm/presentation/core/enum.dart';

@lazySingleton
class SyncService {
  final DBRepository _db;
  final IMainFacade _api;

  SyncService(this._db, this._api);

  final _progressController = StreamController<SyncProgress>.broadcast();
  Stream<SyncProgress> get progressStream => _progressController.stream;
  bool _isSyncing = false;
  bool _hasRunInitialSync = false;

  /// This method call on user Main Tab  View initstate
  Future<void> postLoginInit() async {
    if (_hasRunInitialSync) return;
    _hasRunInitialSync = true;
    await runFullSyncIfOnline();
  }

  Future<void> runFullSyncIfOnline() async {
    if (_isSyncing) return;
    final isOnline = await NetworkListener().isOnline();
    if (!isOnline) return;

    _isSyncing = true;

    debugPrint('🔄 Sync started');

    try {
      _progressController.add(
        const SyncProgress(
          stage: SyncStage.syncingLocal,
          message: 'Uploading offline changes...',
          progress: 0.2,
        ),
      );

      await syncPendingForms();

      _progressController.add(
        const SyncProgress(
          stage: SyncStage.fetchingServer,
          message: 'Fetching latest forms...',
          progress: 0.6,
        ),
      );

      await hydrateAllForms();

      _progressController.add(
        const SyncProgress(
          stage: SyncStage.completed,
          message: 'Sync completed',
          progress: 1.0,
        ),
      );
    } catch (e) {
      debugPrint('Sync failed: $e');
      _progressController.add(
        const SyncProgress(
          stage: SyncStage.failed,
          message: 'Sync failed',
          progress: 0,
        ),
      );
    } finally {
      _isSyncing = false;
    }
  }

  Future<void> syncPendingForms() async {
    final pendingForms = await _db.getUnsyncedForms();
    print("Pending Sync Forms---> $pendingForms");

    for (final form in pendingForms) {
      try {
        // Always CREATE When server_id is null
        if (form.server_id == null) {
          final res = await _api.addFormAPI(form: form, showSucessToast: false);

          res.fold(
            (_) => null,
            (r) => _db.markAsSynced(
              localId: form.localId,
              serverId: r?.server_id ?? -1,
            ),
          );
          continue;
        }
        switch (form.syncAction) {
          case 'update':
            final res = await _api.updateFormAPI(
              form: form,
              showSucessToast: false,
            );
            res.fold(
              (_) => null,
              (r) => DBRepository().markAsSynced(
                localId: form.localId,
                serverId: r?.server_id ?? -1,
              ),
            );
            break;

          case 'delete':
            if (form.server_id == null) {
              await _db.deleteLocalFormByServerId(-1);
              break;
            }

            final res = await _api.deleteFormAPI(
              id: form.server_id!,
              showSucessToast: false,
            );
            await res.fold((_) => null, (r) async {
              await _db.deleteLocalFormByServerId(form.server_id!);
            });
            break;
        }
      } catch (e) {
        debugPrint("Error: Sync Pending Forms-> $e");
      }
    }
  }

  /// 2️⃣ SERVER → LOCAL (FULL DATA)
  Future<void> hydrateAllForms() async {
    final res = await _api.getAllFormForDB();

    res.fold((l) => debugPrint('❌ getAllForms failed'), (forms) async {
      final serverIds = forms.map((e) => e.server_id).whereType<int>().toSet();

      await _db.upsertFullServerForms(forms);
      // CLEANUP DELETED SERVER FORMS
      final database = await AppDatabase().database;
      await database.delete(
        StorageConstants.offlineForms,
        where:
            'server_id IS NOT NULL AND server_id NOT IN (${serverIds.join(',')})',
      );
    });
  }
}
