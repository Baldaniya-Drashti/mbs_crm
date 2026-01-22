import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/constants/storage_constants.dart';
import 'package:mbs_crm/core/database/app_db.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

@LazySingleton()
class DBRepository {
  static const int perPage = 25;

  Future<void> saveFormOffline({required HomeDTO form}) async {
    final db = await AppDatabase().database;
    Map<String, dynamic> map = {
      'form_type': form.formType,
      'form_name': form.formName,
      'form_slug': form.slug,
      'form_json': jsonEncode(form.data),
      'status': form.status ?? 'draft',
      'created_at': form.createdAt,
      'updated_at': form.updatedAt,
      'local_id': form.localId,
      'server_id': null,
      'is_synced': 0,
      'sync_action': 'create',
    };

    await db.insert(StorageConstants.offlineForms, map);
  }

  Future<void> updateFormOffline({required HomeDTO form}) async {
    final db = await AppDatabase().database;
    Map<String, dynamic> map = {
      'form_type': form.formType,
      'form_name': form.formName,
      'form_slug': form.slug,
      'form_json': jsonEncode(form.data),
      'status': form.status ?? 'draft',
      'created_at': form.createdAt,
      'updated_at': form.updatedAt,
      'is_synced': 0,
      'sync_action': (form.server_id == null) ? 'create' : 'update',
    };

    await db.update(
      StorageConstants.offlineForms,
      map,
      where: 'local_id = ?',
      whereArgs: [form.localId],
    );
  }

  /// USED
  Future<void> markFormForDelete(HomeDTO form) async {
    final db = await AppDatabase().database;

    // Case 1: Never synced form with server → delete immediately
    if (form.server_id == null) {
      await db.delete(
        StorageConstants.offlineForms,
        where: 'local_id = ?',
        whereArgs: [form.localId],
      );
      return;
    }

    // Case 2: Synced form with server → mark for delete
    await db.update(
      StorageConstants.offlineForms,
      {
        'is_synced': 0,
        'sync_action': 'delete',
        'updated_at': DateTime.now().toIso8601String(),
      },
      where: 'local_id = ?',
      whereArgs: [form.localId],
    );
  }

  /// USED
  Future<void> deleteLocalFormByServerId(int serverId) async {
    final db = await AppDatabase().database;

    await db.delete(
      StorageConstants.offlineForms,
      where: 'server_id = ?',
      whereArgs: [serverId],
    );
  }

  /// USED
  Future<HomeDTO?> getFormByLocalId(String localId) async {
    final db = await AppDatabase().database;

    final result = await db.query(
      StorageConstants.offlineForms,
      where: 'local_id = ?',
      whereArgs: [localId],
    );

    return result.isEmpty ? null : HomeDTO.fromDb(result.first);
  }

  Future<HomeDTO?> getFormByServerId(int serverId) async {
    final db = await AppDatabase().database;

    final result = await db.query(
      StorageConstants.offlineForms,
      where: 'server_id = ?',
      whereArgs: [serverId],
    );

    return result.isEmpty ? null : HomeDTO.fromDb(result.first);
  }

  /// USED
  Future<List<HomeDTO>> getAllOfflineForms({required int page}) async {
    final db = await AppDatabase().database;
    final offset = (page - 1) * perPage;

    final result = await db.query(
      StorageConstants.offlineForms,
      where: 'sync_action IS NULL OR sync_action != ?',
      whereArgs: ['delete'],
      orderBy: 'created_at ASC',
      limit: perPage,
      offset: offset,
    );

    return result.map(HomeDTO.fromDb).toList();
  }

  /// USED
  Future<int> getOfflineFormsCount() async {
    final db = await AppDatabase().database;
    final result = Sqflite.firstIntValue(
      await db.rawQuery(
        'SELECT COUNT(*) FROM ${StorageConstants.offlineForms}',
      ),
    );
    return result ?? 0;
  }

  Future<void> updateFormStatus({
    required int id,
    required String status,
  }) async {
    final db = await AppDatabase().database;

    await db.update(
      StorageConstants.offlineForms,
      {'status': status, 'updated_at': DateTime.now().toIso8601String()},
      where: 'server_id = ?',
      whereArgs: [id],
    );
  }

  /// USED
  Future<List<HomeDTO>> getUnsyncedForms() async {
    final db = await AppDatabase().database;

    final rows = await db.query(
      StorageConstants.offlineForms,
      where: 'is_synced = ?',
      whereArgs: [0],
      orderBy: 'created_at ASC',
    );

    return rows.map(HomeDTO.fromDb).toList();
  }

  /// USED
  Future<void> markAsSynced({
    required String localId,
    required int serverId,
  }) async {
    final db = await AppDatabase().database;

    await db.update(
      StorageConstants.offlineForms,
      {
        'is_synced': 1,
        'sync_action': null,
        'server_id': serverId,
        'updated_at': DateTime.now().toIso8601String(),
      },
      where: 'local_id = ?',
      whereArgs: [localId],
    );
  }

  /// USED
  Future<void> upsertFullServerForms(List<HomeDTO> serverForms) async {
    final db = await AppDatabase().database;
    final batch = db.batch();

    for (final form in serverForms) {
      final existing = await db.query(
        StorageConstants.offlineForms,
        where: 'server_id = ?',
        whereArgs: [form.server_id],
        limit: 1,
      );

      final localId = existing.isNotEmpty
          ? existing.first['local_id'] as String
          : const Uuid().v4();

      batch.insert(
        StorageConstants.offlineForms,
        {
          'local_id': localId,
          'server_id': form.server_id,
          'is_synced': 1,
          'sync_action': null,
          'form_type': form.formType,
          'form_name': form.formName,
          'form_slug': form.slug,
          'form_json': jsonEncode(form.data),
          'status': form.status,
          'created_at': form.createdAt,
          'updated_at': form.updatedAt,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit(noResult: true);
  }

  /// USED /// PARTIAL SERVER DATA (HOME LIST API)
  Future<void> upsertFormSummary(List<HomeDTO> forms) async {
    final db = await AppDatabase().database;

    for (final form in forms) {
      final existing = await db.query(
        StorageConstants.offlineForms,
        where: 'server_id = ?',
        whereArgs: [form.server_id],
        limit: 1,
      );

      if (existing.isEmpty) {
        // Insert minimal row (no form_json)
        await db.insert(StorageConstants.offlineForms, {
          'local_id': const Uuid().v4(),
          'server_id': form.server_id,
          'form_type': form.formType,
          'form_name': form.formName,
          'form_slug': form.slug,
          'status': form.status,
          'created_at': form.createdAt,
          'updated_at': form.updatedAt,
          'form_json': jsonEncode({}),
          'is_synced': 1,
          'sync_action': null,
        });
      } else {
        // Update metadata ONLY
        await db.update(
          StorageConstants.offlineForms,
          {
            'form_type': form.formType,
            'form_name': form.formName,
            'form_slug': form.slug,
            'status': form.status,
            'updated_at': form.updatedAt,
            'is_synced': 1,
            'sync_action': null,
          },
          where: 'server_id = ?',
          whereArgs: [form.server_id],
        );
      }
    }
  }
}
