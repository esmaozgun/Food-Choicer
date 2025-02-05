import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/recipe.dart';

class RecipeService {
  static const String apiUrl = 'http://192.168.56.1:5000/recipes'; // Bilgisayarınızın IP adresini kullanın

  Future<List<Recipe>> fetchRecipes() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      List<dynamic> recipeList = responseData['recipes'];
      return recipeList.map((json) => Recipe.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Future<List<Recipe>> recipes; // List of recipes
  List<Recipe> allRecipes = []; // All recipes
  List<Recipe> filteredRecipes = []; // Filtered recipes
  TextEditingController searchController = TextEditingController(); // Search controller

  @override
  void initState() {
    super.initState();
    recipes = RecipeService().fetchRecipes(); // Fetch recipes from API
    recipes.then((value) {
      setState(() {
        allRecipes = value; // Store all recipes
        filteredRecipes = allRecipes; // Initially show all recipes
      });

      // API'den alınan tarifleri konsola yazdır
      for (var recipe in allRecipes) {
        print('Recipe ID: ${recipe.id}, Recipe Name: ${recipe.name}'); // Tarifi konsola yazdır
      }
    }).catchError((error) {
      print('Error fetching recipes: $error'); // Hata durumunu konsola yazdır
    });
  }

  // Filter function based on search query
  void _filterRecipes(String query) {
    if (query.isEmpty) {
      filteredRecipes = allRecipes; // Show all recipes if search bar is empty
    } else {
      // Filter recipes matching the search query
      filteredRecipes = allRecipes.where((recipe) {
        return recipe.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }

    setState(() {
      // Update filtered recipes
    });
  }

  Widget buildRecipeContainer(Recipe recipe) {
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
          image: AssetImage('assets/images/Rectangle646.png'), // Resim dosyanızı ayarlayın
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          recipe.name,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Recipes'),
      ),
      body: Stack(
        children: [
          // Arka plan resmi
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Image1.png'), // Arka plan resmini ayarlayın
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  onChanged: _filterRecipes, // Filter when text changes
                  decoration: InputDecoration(
                    labelText: 'Search recipe',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: FutureBuilder<List<Recipe>>(
                    future: recipes,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else {
                        return ListView.builder(
                          itemCount: filteredRecipes.length,
                          itemBuilder: (context, index) {
                            final recipe = filteredRecipes[index];
                            return GestureDetector(
                              onTap: () {
                                // Tarife tıklandığında yapılacak işlem
                                // Örneğin, detay sayfasına yönlendirin
                              },
                              child: buildRecipeContainer(recipe),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                      // Ana sayfaya yönlendirin
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.bookmark, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      // Favorilere yönlendirin
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      // Arama sayfasına tekrar yönlendirin
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      // Hakkında sayfasına yönlendirin
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
}
