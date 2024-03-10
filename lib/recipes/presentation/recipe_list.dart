import 'package:flutter/material.dart';

import '../../common/widgets/app_network_image.dart';
import '../data/json_parser.dart';
import 'food_type_info.dart';
import 'recipe_details.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key, required this.recipes});

  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (BuildContext context, int index) {
        final Recipe recipe = recipes[index];

        return Card(
          child: ListTile(
              title: Text('${recipe.title}'),
              subtitle: FoodTypeInfo(
                recipe: recipe,
                alignment: WrapAlignment.end,
              ),
              leading: AppNetworkImage(url: recipe.image),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipeDetails(
                              recipe: recipe,
                            )));
              }),
        );
      },
    );
  }
}
