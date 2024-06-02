import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/models/item_model.dart';
import 'package:fruittrace/src/config/app_data.dart' as app_data;

class CartService {
  void addItemToCart(ItemModel item, int quantity) {
    // Verifica se o item já está no carrinho
    var existingItem = app_data.cartItems.firstWhere(
      (cartItem) => cartItem.item == item,
      orElse: () => CartItemModel(item: item, quantity: 0),
    );

    if (existingItem.quantity == 0) {
      // Item não está no carrinho, então adicione
      app_data.cartItems.add(CartItemModel(item: item, quantity: quantity));
    } else {
      // Item já está no carrinho, então aumente a quantidade
      existingItem.quantity += quantity;
    }
  }
}
