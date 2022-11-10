import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/meal.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen(this.meals, {super.key});

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(meal: categoryMeals[index]);
          },
        ));
  }
}
