import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/recipe.dart';

class RecipeService {
  final String apiUrl = 'https://api.jsonbin.io/v3/qs/6729f8b6ad19ca34f8c483ba';

  Future<List<Recipe>> fetchRecipes() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body)['recipes'];
      return jsonData.map((recipeJson) => Recipe.fromJson(recipeJson)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
