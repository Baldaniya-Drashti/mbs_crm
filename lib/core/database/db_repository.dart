import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mbs_crm/core/constants/storage_constants.dart';
import 'package:mbs_crm/core/database/app_db.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';

@LazySingleton()
class DBRepository {
  Future<void> saveFormOffline({required HomeDTO form}) async {
    final db = await AppDatabase().database;
    Map<String, dynamic> map = {
      'form_id': form.formId,
      'name': form.name,
      'slug': form.slug,
      'data': jsonEncode(form.data),
      'status': form.status ?? 'draft',
      'created_at': form.createdAt,
      'updated_at': form.updatedAt,
    };

    await db.insert(StorageConstants.offlineForms, map);
  }

  Future<void> updateFormOffline({required HomeDTO form}) async {
    final db = await AppDatabase().database;
    Map<String, dynamic> map = {
      'form_id': form.formId,
      'name': form.name,
      'slug': form.slug,
      'data': jsonEncode(form.data),
      'status': form.status ?? 'draft',
      'created_at': form.createdAt,
      'updated_at': form.updatedAt,
    };

    await db.update(
      StorageConstants.offlineForms,
      map,
      where: 'id = ?',
      whereArgs: [form.id],
    );
  }

  Future<HomeDTO?> getFormById(int id) async {
    final db = await AppDatabase().database;

    final result = await db.query(
      StorageConstants.offlineForms,
      where: 'id = ?',
      whereArgs: [id],
    );

    return result.isEmpty ? null : HomeDTO.fromDb(result.first);

    /*  if (result.isEmpty) return null;
    final row = result.first;
    return HomeDTO(
      id: row['id'] as int?,
      formId: row['form_id']?.toString(),
      name: row['name'] as String?,
      slug: row['slug'] as String?,
      status: row['status'] as String?,
      createdAt: row['created_at'] as String?,
      updatedAt: row['updated_at'] as String?,
      data: row['data'] != null ? jsonDecode(row['data'] as String) : null,
    ); */
  }

  Future<List<HomeDTO>> getAllOfflineForms() async {
    final db = await AppDatabase().database;

    final result = await db.query(
      StorageConstants.offlineForms,
      orderBy: 'created_at DESC',
    );

    return result.map(HomeDTO.fromDb).toList();

    /*  return result.map((row) {
      return HomeDTO(
        id: row['id'] as int?,
        formId: row['form_id']?.toString(),
        name: row['name'] as String?,
        slug: row['slug'] as String?,
        status: row['status'] as String?,
        createdAt: row['created_at'] as String?,
        updatedAt: row['updated_at'] as String?,
        data: row['data'] != null ? jsonDecode(row['data'] as String) : null,
      );
    }).toList(); */
  }

  Future<void> syncOfflineForms() async {
    final db = await AppDatabase().database;

    final forms = await db.query(
      StorageConstants.offlineForms,
      where: 'status != ?',
      whereArgs: ['synced'],
    );

    for (final form in forms) {
      try {
        final int id = form['id'] as int;
        // final String jsonString = form['data'] as String;
        // final Map<String, dynamic> payload = jsonDecode(jsonString);

        // ------------ CALL YOUR API HERE ------------ //
        // final success = await sendFormToApi(payload);
        final success = true;

        if (success) {
          await updateFormStatus(id: id, status: 'synced');
        } /* else {
        await updateFormStatus(id: id, status: 'failed');
      } */
      } catch (e) {
        debugPrint('Sync failed: $e');
      }
    }
  }

  Future<void> updateFormStatus({
    required int id,
    required String status,
  }) async {
    final db = await AppDatabase().database;

    await db.update(
      StorageConstants.offlineForms,
      {'status': status, 'updated_at': DateTime.now().toIso8601String()},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<HomeDTO>> getDraftForms() async {
    final db = await AppDatabase().database;
    final rows = await db.query(
      StorageConstants.offlineForms,
      where: 'status = ?',
      whereArgs: ['draft'],
    );
    return rows.map(HomeDTO.fromDb).toList();
  }
}
