import 'dart:ui';

import 'package:Shrine/colors.dart';
import 'package:flutter/material.dart';

import 'model/product.dart' as product;

class CategoryMenuPage extends StatelessWidget {
  final product.Category currentCategory;
  final ValueChanged<product.Category> onCategoryTap;
  final List<product.Category> _categories = product.Category.values;

  const CategoryMenuPage({
    Key? key,
    required this.currentCategory,
    required this.onCategoryTap,
  });

  Widget _buildCategory(product.Category category, BuildContext context) {
    final categoryString =
        category.toString().replaceAll('Category.', '').toUpperCase();
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onCategoryTap(category),
      child: category == currentCategory
          ? Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                Text(
                  categoryString,
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 14.0),
                Container(
                  width: 70.0,
                  height: 2.0,
                  color: kShrinePink400,
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                categoryString,
                style: theme.textTheme.bodyText1!
                    .copyWith(color: kShrineBrown900.withAlpha(153)),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: kShrinePink100,
        child: ListView(
            children: _categories
                .map((product.Category c) => _buildCategory(c, context))
                .toList()),
      ),
    );
  }
}
