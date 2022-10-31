import 'package:flutter/material.dart';

import 'screens/categories_meals_screnn.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData theme = ThemeData(
    fontFamily: 'Raleway',
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.pink,
      secondary: Colors.amber,
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
          headline6: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.copyWith(),
      home: const TabsScreen(),
      routes: {
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen()
      },
    );
  }
}
