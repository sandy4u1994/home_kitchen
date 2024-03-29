import 'package:flutter/material.dart';
import 'package:home_kitchen/Models/review.dart';
import 'package:home_kitchen/Widget/ReviewItemWidget.dart';

// ignore: must_be_immutable
class ReviewsListWidget extends StatelessWidget {
  ReviewsList _reviewsList = new ReviewsList();

  ReviewsListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return ReviewItemWidget(review: _reviewsList.reviewsList.elementAt(index));
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 20);
      },
      itemCount: 3,
      primary: false,
      shrinkWrap: true,
    );
  }
}
