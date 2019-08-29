import 'package:flutter/material.dart';
import 'package:home_kitchen/elements/OrderItemWidget.dart';
import 'package:home_kitchen/Models/order.dart';

class OrdersWidget extends StatelessWidget {
  OrdersList _ordersList = new OrdersList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
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
            SizedBox(height: 10),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: _ordersList.orderedList.length,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                return OrderItemWidget(heroTag: 'my_orders', order: _ordersList.orderedList.elementAt(index));
              },
            ),
          ],
        ),
      ),
    );
  }
}
