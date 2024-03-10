import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../common/widgets/app_network_image.dart';
import '../../common/widgets/base_app_bar.dart';
import '../../common/widgets/base_expansion_tile.dart';
import '../data/json_parser.dart';
import 'food_type_info.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const BaseAppBar(title: 'Recipe'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  recipe.title ?? "",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                AppNetworkImage(url: recipe.image),
                const SizedBox(height: 10),
                foodType(),
                const SizedBox(height: 10),
                healthScore(context),
                const SizedBox(height: 10),
                summary(context),
                const SizedBox(height: 10),
                ingredients(),
                const SizedBox(height: 10),
                instructions(context),
              ],
            ),
          ),
        ));
  }

  LinearPercentIndicator healthScore(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width * 0.5,
      alignment: MainAxisAlignment.center,
      animation: true,
      lineHeight: 20.0,
      barRadius: const Radius.circular(10.0),
      animationDuration: 1000,
      percent: recipe.healthScore! / 100,
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: Image.asset(
          'images/muscle.png',
        ),
      ),
      center: Text('${recipe.healthScore!}%'),
      progressColor: Colors.green,
    );
  }

  BaseExpansionTile ingredients() {
    return BaseExpansionTile(
      title: 'Ingredients',
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          key: const PageStorageKey('IngredientsList'),
          itemCount: recipe.extendedIngredients != null
              ? recipe.extendedIngredients?.length
              : 0,
          itemBuilder: (BuildContext context, int index) {
            final ExtendedIngredients ingredient =
                recipe.extendedIngredients![index];
            return ListTile(
              title: Text('${ingredient.original}'),
              leading: CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://spoonacular.com/cdn/ingredients_100x100/${ingredient.image}')),
            );
          },
        ),
      ],
    );
  }

  BaseExpansionTile instructions(BuildContext context) {
    return BaseExpansionTile(
      title: 'Instructions',
      children: [
        HtmlWidget(
          recipe.instructions ?? "",
          textStyle: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  BaseExpansionTile summary(BuildContext context) {
    return BaseExpansionTile(
      title: 'Summary',
      children: [
        HtmlWidget(
          recipe.summary ?? "",
          textStyle: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  FoodTypeInfo foodType() {
    return FoodTypeInfo(
      recipe: recipe,
      alignment: WrapAlignment.spaceEvenly,
    );
  }
}
