import 'package:flutter/material.dart';
import 'package:max_meals_app/widgets/meal_item.dart';
import 'package:max_meals_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName =
      '/category-meals'; //IMPORTANT to avoid typos in route names
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            id: categoryMeals[index].id,
            duration: categoryMeals[index].duration,
            imageUrl: categoryMeals[index].imageUrl,
            title: categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
