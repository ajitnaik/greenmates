import 'package:flutter/material.dart';

import '../../common/constants/image_constants.dart';
import '../data/json_parser.dart';

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
          Image.asset(sustainableImage, width: width, height: height),
        if (recipe.vegan != null && recipe.vegan!)
          Image.asset(veganImage, width: width, height: height),
        if (recipe.glutenFree != null && recipe.glutenFree!)
          Image.asset(glutenFreeImage, width: width, height: height),
        if (recipe.vegetarian != null && recipe.vegetarian!)
          Image.asset(vegetarianImage, width: width, height: height),
        if (recipe.dairyFree != null && recipe.dairyFree!)
          Image.asset(dairyFreeImage, width: width, height: height),
      ],
    );
  }
}
