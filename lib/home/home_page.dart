import 'package:flutter/material.dart';
import 'package:greenmates/common/widgets/base_app_bar.dart';
import 'package:greenmates/recipes/presentation/recipes_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'GreenMates'),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RecipesPage()));
          },
          child: const Text('View Random Recipes'),
        ),
      ),
    );
  }
}
