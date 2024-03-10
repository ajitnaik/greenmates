import 'package:flutter/material.dart';

class BaseExpansionTile extends StatelessWidget {
  const BaseExpansionTile(
      {super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      key: PageStorageKey(title),
      title: Text(title),
      collapsedBackgroundColor: Theme.of(context).colorScheme.inversePrimary,
      collapsedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      children: children,
    );
  }
}
