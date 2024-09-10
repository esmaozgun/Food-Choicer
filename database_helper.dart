import 'dart:io';
import 'package:flutter/material.dart';
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
    String path = join(documentsDirectory.path, "testt.db");

    // eger veritabanı var ise, sürüm kontrolü yaparak guncellenmesini sagla
    bool dbExists = await databaseExists(path);

    if (!dbExists) {
      // veritabanı dosyasını assets klasöründen kopyala
      ByteData data = await rootBundle.load(join('assets', 'testt.db'));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes);
    } else {

    }
    return await openDatabase(path, version: 1, onUpgrade: _onUpgrade);
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {

    print('veritabanı güncelleniyor');
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await runSimpleQuery();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: Text('Merhaba, dünya!'),
      ),
    );
  }
}

Future<void> runSimpleQuery() async {
  DatabaseHelper dbHelper = DatabaseHelper();

  String sqlQuery = 'SELECT * FROM recipes;';

  await dbHelper.executeQueryAndPrintToConsole(sqlQuery);
}
