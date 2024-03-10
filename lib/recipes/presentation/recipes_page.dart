import 'package:flutter/material.dart';
import 'package:greenmates/dependency_injection.dart';
import 'package:greenmates/common/widgets/base_app_bar.dart';
import 'package:greenmates/recipes/service/recipe_service.dart';
import 'package:greenmates/recipes/presentation/recipe_list.dart';

import '../data/json_parser.dart';

class RecipesPage extends StatelessWidget {
  RecipesPage({super.key});

  final RecipeService recipeService = getIt<RecipeService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'Recipes'),
      body: Center(
        child: FutureBuilder<List<Recipe>>(
          future: recipeService.fetchRecipes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var recipes = snapshot.data!;
              return RecipeList(recipes: recipes);
            } else if (snapshot.hasError) {
              showAlert(context);
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<void> showAlert(BuildContext context) {
    return Future(() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('No Recipes found'),
                content: const Text(
                    'Could not retrieve Recipes. Please try again later.'),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => {
                            Navigator.of(context)..pop()..pop(),
                          },
                      child: const Text('OK')),
                ],
              ));
    });
  }
}
