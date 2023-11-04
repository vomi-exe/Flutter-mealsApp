import 'package:meals/models/category.dart';
import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onSelectedCateory});

  final Category category;
  final void Function() onSelectedCateory;

  @override
  Widget build(context) {
    return InkWell(
      onTap: onSelectedCateory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.70),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
