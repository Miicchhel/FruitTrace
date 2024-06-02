import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/pages/cart/components/cart_tile.dart';
import 'package:fruittrace/src/services/utils_services.dart';
import 'package:fruittrace/src/config/app_data.dart' as app_data;

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {

  final UtilsServices utilsServices = UtilsServices();

  void removeItemFromCart(CartItemModel cartItem) {
    setState(() {
      app_data.cartItems.remove(cartItem);
    });
  }

  // garante a atualização da tela ao incrementar ou decrementar quantidade um item
  void updateQuantity(CartItemModel cartItem, int newQuantity) {
    setState(() {
      cartItem.quantity = newQuantity;

      // caso para remover o item do carrinho
      if (newQuantity == 0) {
        removeItemFromCart(cartItem);
      }
    });
  }

  double cartTotalPrice() {

    double total = 0;
    
    for (var item in app_data.cartItems) {
        total += item.totalPrice();
    }

    return total;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor[200],
        centerTitle: true,
        title: const Text(
          'Carrinho',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Color.fromARGB(255, 68, 67, 67),
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          // lista de itens do carrinho
          Expanded(
            child: ListView.builder(
              itemCount: app_data.cartItems.length,
              itemBuilder: (BuildContext _, int index) {
                return CartTile(
                  cartItem: app_data.cartItems[index],
                  updateQuantity: updateQuantity,
                );
              },
            ),
          ),

          // Total e confirmação de pedido
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 3.0,
                  blurRadius: 2,
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Total Geral',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),

                Text(
                  utilsServices.priceToCurrency(cartTotalPrice()),
                  style: TextStyle(
                    fontSize: 23.0,
                    color: CustomColors.customSwatchColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.customSwatchColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    
                    onPressed: () {},

                    child: const Text(
                      'Concluir pedido',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}