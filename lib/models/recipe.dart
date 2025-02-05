class Recipe {
  final String id;
  final String name;
  final List<String> ingredients;
  final String preparationTime;
  final String description;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.preparationTime,
    required this.description,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['recipe_id'],
      name: json['recipe_name'],
      ingredients: List<String>.from(json['ingredients']),
      preparationTime: json['preparation_time'],
      description: json['description'],
    );
  }
}
