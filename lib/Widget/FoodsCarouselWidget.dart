import 'package:flutter/material.dart';
import 'package:home_kitchen/Widget/FoodsCarouselItemWidget.dart';
import 'package:home_kitchen/Models/food.dart';

class FoodsCarouselWidget extends StatelessWidget {
  FoodsList _foodsList = new FoodsList();

  FoodsCarouselWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount: _foodsList.featuredList.length,
          itemBuilder: (context, index) {
            double _marginLeft = 0;
            (index == 0) ? _marginLeft = 20 : _marginLeft = 0;
            return FoodsCarouselItemWidget(
              heroTag: 'home_food_carousel',
              marginLeft: _marginLeft,
              food: _foodsList.featuredList.elementAt(index),
            );
          },
          scrollDirection: Axis.horizontal,
        ));
  }
}
