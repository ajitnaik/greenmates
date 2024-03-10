import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../env/env.dart';
import '../data/json_parser.dart';
import 'recipe_service.dart';

@Injectable(as: RecipeService)
class SpoonacularService implements RecipeService {
  @override
  Future<List<Recipe>> fetchRecipes() async {
    final response = await http.get(Uri.parse(
        'https://api.spoonacular.com/recipes/random?number=20&apiKey=${Env.spoonacularApiKey}'));

    if (response.statusCode != HttpStatus.ok) {
      log('Unsuccessful response while calling Spoonacular random api. Response: ${response.body}');
      return Future.error('SpoonacularException');
    } else {
      return SpoonacularData.fromJson(
              jsonDecode(response.body) as Map<String, dynamic>)
          .recipes;
    }
  }
}
