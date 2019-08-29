import 'package:flutter/material.dart';
import 'package:home_kitchen/Widget/CardsCarouselWidget.dart';
import 'package:home_kitchen/Widget/FoodsCarouselWidget.dart';
import 'package:home_kitchen/Widget/CaregoriesCarouselWidget.dart';
import 'package:home_kitchen/Widget/ReviewsListWidget.dart';
import 'package:home_kitchen/Widget/GridWidget.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child:SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Search',
                hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.search, color: Theme.of(context).accentColor),
                suffixIcon: Icon(Icons.mic_none, color: Theme.of(context).focusColor.withOpacity(0.7)),
                border:
                OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(
                Icons.stars,
                color: Theme.of(context).hintColor,
              ),
              title: Text(
                'Top Restaurants',
                style: Theme.of(context).textTheme.display1,
              ),
              subtitle: Text(
                'Ordered by Nearby first',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          CardsCarouselWidget(),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Icon(
              Icons.trending_up,
              color: Theme.of(context).hintColor,
            ),
            title: Text(
              'Trending This Week',
              style: Theme.of(context).textTheme.display1,
            ),
            subtitle: Text(
              'Double click on the food to add it to the cart',
              style: Theme.of(context).textTheme.caption.merge(TextStyle(fontSize: 11)),
            ),
          ),
          FoodsCarouselWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(
                Icons.category,
                color: Theme.of(context).hintColor,
              ),
              title: Text(
                'Food Categeries',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          CategoriesCarouselWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              leading: Icon(
                Icons.trending_up,
                color: Theme.of(context).hintColor,
              ),
              title: Text(
                'Most Popular',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              leading: Icon(
                Icons.recent_actors,
                color: Theme.of(context).hintColor,
              ),
              title: Text(
                'Recent Reviews',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ReviewsListWidget(),
          ),
        ],
      ),
    ),
    );
  }
}
