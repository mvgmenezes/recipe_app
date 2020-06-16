import 'package:flutter/material.dart';
import 'package:recipe_app/dummy_data.dart';
import 'package:recipe_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {

  //Using routes these values will passing by arguments
  /*final String categoryId;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryId, this.categoryTitle);*/

  static const routeName = '/category-meals';


  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(categoryId)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(itemBuilder: (ctx, index){
        return MealItem(
          title: categoryMeals[index].title,
          imageUrl: categoryMeals[index].imageUrl,
          duration: categoryMeals[index].duration,
          affordability: categoryMeals[index].affordability,
          complexity: categoryMeals[index].complexity,
        );
      }, itemCount: categoryMeals.length,),
    );
  }
}