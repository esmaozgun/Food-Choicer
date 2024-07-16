import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");

    // Eğer veritabanı var ise, kopyalama işlemi yapma
    bool dbExists = await databaseExists(path);

    if (!dbExists) {
      // Var olan veritabanını assets klasöründen kopyalama
      ByteData data = await rootBundle.load(join('assets', 'test.db'));
      List<int> bytes = data.buffer.asUint8List(
          data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes);
    }

    return await openDatabase(path, version: 1);
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }

  Future<void> executeQueryAndPrintToConsole(String sqlQuery) async {
    try {
      final db = await database;
      List<Map<String, dynamic>> result = await db.rawQuery(sqlQuery);
      result.forEach((row) {
        print(row);
      });
    } catch (e) {
      print('Hata: $e');
    } finally {
      await close();
    }
  }
}

