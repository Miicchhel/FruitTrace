import 'package:flutter/material.dart';
import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/pages/common_widgets/quantityWidget.dart';

class CartTile extends StatelessWidget {
  final CartItemModel cartItem;

  const CartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        // imagem
        leading: Image.asset(
          cartItem.item.imgUrl,
          height: 60.0,
          width: 60.0,
        ),

        // título
        title: Text(
          cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),

        // total

        // quantidade
        trailing: Quantitywidget(
          suffixText: cartItem.item.unit,
          value: cartItem.quantity,
          result: (int quantity) {},
        ),
      ),
    );
  }
}