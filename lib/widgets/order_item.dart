import 'package:flutter/material.dart';

import '../providers/orders.dart' as ord;

class OrderItem extends StatelessWidget {
  final ord.OrderItem order;

  const OrderItem({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('${order.amount} €'),
            subtitle: Text(order.orderTime.toString()),
            trailing: IconButton(icon: Icon(Icons.expand_more), onPressed: () {

            },),
          )
        ],
      ),
    );
  }
}
