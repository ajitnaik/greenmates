import 'package:flutter/material.dart';
import 'package:greenmates/recipes/data/json_parser.dart';

class FoodTypeInfo extends StatelessWidget {
  const FoodTypeInfo({
    super.key,
    required this.recipe,
    required this.alignment,
  });

  final Recipe recipe;
  final WrapAlignment alignment;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.08;
    double height = MediaQuery.of(context).size.height * 0.08;
    return Wrap(
      alignment: alignment,
      children: [
        if (recipe.sustainable != null && recipe.sustainable!)
          Image.asset('images/sustainable.png', width: width, height: height),
        if (recipe.vegan != null && recipe.vegan!)
          Image.asset('images/vegan.png', width: width, height: height),
        if (recipe.glutenFree != null && recipe.glutenFree!)
          Image.asset('images/glutenfree.png', width: width, height: height),
        if (recipe.vegetarian != null && recipe.vegetarian!)
          Image.asset('images/vegetarian.png', width: width, height: height),
        if (recipe.dairyFree != null && recipe.dairyFree!)
          Image.asset('images/dairyfree.png', width: width, height: height),
      ],
    );
  }
}
