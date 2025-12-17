import 'package:mbs_crm/core/constants/storage_constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static final AppDatabase _instance = AppDatabase._internal();
  factory AppDatabase() => _instance;
  AppDatabase._internal();

  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    final path = join(await getDatabasesPath(), StorageConstants.mbsCrmDB);
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, _) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS ${StorageConstants.offlineForms} (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            form_id TEXT,
            slug TEXT,
            name TEXT,
            data TEXT,
            status TEXT,
            created_at TEXT,
            updated_at TEXT
          )
        ''');
      },
    );
  }
}
