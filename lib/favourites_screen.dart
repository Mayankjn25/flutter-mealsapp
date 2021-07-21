import 'package:flutter/material.dart';
import './models/meal.dart';
import './meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeasls;
  FavouritesScreen(this.favouriteMeasls);
  @override
  Widget build(BuildContext context) {
    if (favouriteMeasls.isEmpty) {
      return Center(
        child: Text(
          'You have no favourites yet - start adding some!',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeasls[index].id,
            title: favouriteMeasls[index].title,
            imageUrl: favouriteMeasls[index].imageUrl,
            duration: favouriteMeasls[index].duration,
            complexity: favouriteMeasls[index].complexity,
            affordability: favouriteMeasls[index].affordability,
          );
        },
        itemCount: favouriteMeasls.length,
      );
    }
  }
}
