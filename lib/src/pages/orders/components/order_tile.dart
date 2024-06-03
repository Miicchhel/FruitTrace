import 'package:flutter/material.dart';
import 'package:fruittrace/src/models/order_model.dart';

class OrderTile extends StatelessWidget {

  final OrderModel order;

  const OrderTile({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 150, color: Colors.red,);
  }
}