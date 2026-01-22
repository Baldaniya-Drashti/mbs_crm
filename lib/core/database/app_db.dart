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

      /// Change Version If this app is installed by users already
      version: 1,
      onCreate: (db, _) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS ${StorageConstants.offlineForms} (
            db_id INTEGER PRIMARY KEY AUTOINCREMENT,
            local_id TEXT UNIQUE,
            server_id INTEGER UNIQUE,
            is_synced INTEGER DEFAULT 0,
            sync_action TEXT,

            form_type INTEGER,
            form_slug TEXT,
            form_name TEXT,
            form_json TEXT,
            
            status TEXT,
            created_at TEXT,
            updated_at TEXT
          )
        ''');
      },

      /// ----- If this app is installed by users already: ----

      /// ----- Changing table structure WILL NOT APPLY -----
      /// ----- SQLite will keep old schema -----

      /* onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute(
              'ALTER TABLE ${StorageConstants.offlineForms} ADD COLUMN server_id INTEGER');
          await db.execute(
              'ALTER TABLE ${StorageConstants.offlineForms} ADD COLUMN is_synced INTEGER DEFAULT 0');
        }
      }, */
    );
  }
}
