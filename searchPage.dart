import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';import 'homePage.dart'; import 'favoritesPage.dart'; import 'aboutmePage.dart';

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

    bool dbExists = await databaseExists(path);

    if (!dbExists) {
      ByteData data = await rootBundle.load(join('assets', 'testt.db'));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes);
    }
    return await openDatabase(path, version: 1);
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }

  Future<List<String>> getRecipeNames() async {
    final db = await database;
    List<Map<String, dynamic>> result = await db.query('recipes', columns: ['recipe_name']);
    return result.map((row) => row['recipe_name'].toString()).toList();
  }
}

class Androidlarge5Widget extends StatefulWidget {
  @override
  _Androidlarge5WidgetState createState() => _Androidlarge5WidgetState();
}

class _Androidlarge5WidgetState extends State<Androidlarge5Widget> {
  late Future<List<String>> recipeNames;

  @override
  void initState() {
    super.initState();
    recipeNames = DatabaseHelper().getRecipeNames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Image1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 140,
            child: Container(
              width: 347.265,
              height: 41.942,
              child: Text(
                'Search Recipes',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 190, 41, 1),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 38,
            child: Container(
              width: 372,
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  width: 1.3,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 15.95,
                    left: 14.58,
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                  ),
                  Positioned(
                    top: 20.67,
                    left: 55.43,
                    child: Text(
                      'Search recipe',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(217, 217, 217, 1),
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 21,
            right: 21,
            bottom: 70,
            child: FutureBuilder<List<String>>(
              future: recipeNames,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Hata: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('Tarif bulunamadı'));
                } else {
                  return SingleChildScrollView(
                    child: Column(
                      children: snapshot.data!
                          .map((recipeName) => buildRecipeContainer(recipeName))
                          .toList(),
                    ),
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 448,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Androidlarge4Widget()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.bookmark, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Androidlarge6Widget()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Androidlarge5Widget()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutMePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecipeContainer(String title) {
    return Container(
      width: double.infinity,
      height: 176,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(0, 0, 0, 0),
            Color.fromRGBO(0, 0, 0, 1),
          ],
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/Rectangle646.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Androidlarge5Widget(),
  ));
}
