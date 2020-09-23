import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

class DatabaseHelper{
  final String db_name="Notes.db";
  final int db_version=1;
  static final String table="my_table";
  final Column_id='_id';
  final title="title";
  final note="note";

  //singleton constructor
  DatabaseHelper._privateConstructor();
  static DatabaseHelper instance=DatabaseHelper._privateConstructor();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDatabase();
    return _database;
  }



    _initDatabase() async{

      String path = join(await getDatabasesPath(),db_name);
      return await openDatabase(path,
      version: db_version,
      onCreate: Create);
    }
    Future Create(Database db,int version)
    async
    {
      await db.execute("CREATE TABLE $table ($Column_id INTEGER PRIMARY KEY, $title TEXT NOT NULL, $note TEXT NOT NULL)");

  }








}