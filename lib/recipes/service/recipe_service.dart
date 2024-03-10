import '../data/json_parser.dart';

abstract interface class RecipeService {
  Future<List<Recipe>> fetchRecipes();
}