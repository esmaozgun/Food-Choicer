import 'package:flutter/material.dart';
import '../services/recipe_service.dart';
import '../models/recipe.dart';
import 'homePage.dart';
import 'favoritesPage.dart';
import 'aboutmePage.dart';
import 'detailedsearchPage.dart';

class Androidlarge5Widget extends StatefulWidget {
  @override
  _Androidlarge5WidgetState createState() => _Androidlarge5WidgetState();
}

class _Androidlarge5WidgetState extends State<Androidlarge5Widget> {
  late Future<List<Recipe>> recipes;
  List<Recipe> allRecipes = [];
  List<Recipe> filteredRecipes = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    recipes = RecipeService().fetchRecipes();
    recipes.then((value) {
      setState(() {
        allRecipes = value;
        filteredRecipes = allRecipes;
      });
    });
  }

  void _filterRecipes(String query) {
    List<Recipe> filteredList = [];
    if (query.isEmpty) {
      filteredList = allRecipes;
    } else {
      filteredList = allRecipes
          .where((recipe) => recipe.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      filteredRecipes = filteredList;
    });
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
          // Başlık
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
          // Arama kutusu
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
              child: Row(
                children: <Widget>[
                  SizedBox(width: 14),
                  Icon(
                    Icons.search,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      onChanged: _filterRecipes,
                      decoration: InputDecoration(
                        hintText: 'Search recipe',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          fontFamily: 'Poppins',
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Tariflerin listesi
          Positioned(
            top: 220,
            left: 21,
            right: 21,
            bottom: 70,
            child: FutureBuilder<List<Recipe>>(
              future: recipes,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Hata: ${snapshot.error}'));
                } else {
                  return SingleChildScrollView(
                    child: Column(
                      children: filteredRecipes
                          .map((recipe) => buildRecipeContainer(recipe))
                          .toList(),
                    ),
                  );
                }
              },
            ),
          ),
          // Navigasyon barı
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

  // Tarifleri gösterecek olan container
  Widget buildRecipeContainer(Recipe recipe) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Androidlarge7Widget(recipe: recipe), // Detay sayfasını buradan çağırıyoruz
          ),
        );
      },
      child: Container(
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
            image: AssetImage('assets/images/recipe_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                recipe.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
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
