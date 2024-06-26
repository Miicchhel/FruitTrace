import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/pages/common_widgets/quantityWidget.dart';
import 'package:fruittrace/src/services/utils_services.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;
  final Function(CartItemModel, int) updateQuantity;

  
  const CartTile({
    super.key,
    required this.cartItem,
    required this.updateQuantity,
  });

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // imagem
        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          height: 60.0,
          width: 60.0,
        ),

        // título
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),

        // total
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: TextStyle(
              color: CustomColors.customSwatchColor,
              fontWeight: FontWeight.bold),
        ),

        // quantidade
        trailing: Quantitywidget(
          suffixText: widget.cartItem.item.unit,
          value: widget.cartItem.quantity,
          result: (int quantity) {
            setState(() {
              widget.updateQuantity(widget.cartItem, quantity);
            });
          },
          isRemovable: true,
        ),
      ),
    );
  }
}