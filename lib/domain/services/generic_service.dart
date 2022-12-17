import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:flutter_boilerplate/globals/db_globals.dart';

abstract class GenericService {
  const GenericService();

  static Database? _db;

  String dbName();

  String dbTableName();

  Future<Database> database() async {
    if (_db != null) return _db!;
    _db = await _openDB();
    return _db!;
  }

  Future close() async {
    final db = await database();
    db.close();
  }

  Future<Database> _openDB() async {
    final dbFileName = "${DBGlobals.dbNamePrefix}${dbName()}.db";
    final dbFilePath = join(await getDatabasesPath(), dbFileName);

    return await openDatabase(
      dbFilePath,
      version: 1,
      onCreate: (db, version) => _createDB(db),
      onUpgrade: (db, oldVersion, newVersion) => _upgradeDB(db),
    );
  }

  Future _createDB(Database db) async {
    // TODO: FIXME: get fieldsList from an abstract method maybe?
    await db.execute('''
    CREATE TABLE ${dbTableName()} (
      _id ${DBGlobals.idType},
      name TEXT NOT NULL
    )
    ''');
  }

  Future _upgradeDB(Database db) async {
    await _dropDB(db);
    await _createDB(db);
  }

  Future _dropDB(Database db) async {
    await db.execute('''
    DROP TABLE IF EXISTS ${dbTableName()}
    ''');
  }
}
