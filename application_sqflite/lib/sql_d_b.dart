// ignore_for_file: non_constant_identifier_names

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
//import 'package:sqflite_common_ffi/windows/sqflite_ffi_setup.dart';

class SQLdb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialisation();
      return _db;
    } else {
      return _db;
    }
  }

//.........................................................
  Future<Database> initialisation() async {
    String db_path = await getDatabasesPath();
    String Path = join(db_path, "cinema");
    Database My_db = await openDatabase(Path, version: 1, onCreate: _oncreate);
    return My_db;
  }

  _oncreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE "films"(
        "id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "titre" TEXT NOT NULL,
        "duree" INT NOT NULL
      )
           ''');
    print(
        "............................. Database create ...............................");
  }

//.........................................CRUD
//........insertion
  Future<int> Insert_Value(String sql) async {
    Database? My_db = await db;
    int response = await My_db!.rawInsert(sql);
    return response;
  }

//..........Lecture
  Future<List<Map>> Get_Value(String sql) async {
    Database? My_db = await db;
    List<Map> response = await My_db!.rawQuery(sql);
    return response;
  }

//..........Modification
  Future<int> Update_Value(String sql) async {
    Database? My_db = await db;
    int response = await My_db!.rawUpdate(sql);
    return response;
  }

//..........Modification
  Future<int> Delete_Value(String sql) async {
    Database? My_db = await db;
    int response = await My_db!.rawDelete(sql);
    return response;
  }
}
