import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/models/item_model.dart';
import 'package:fruittrace/src/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  
  final ItemModel item;

  ItemTile({
    super.key,
    required this.item,
  });
  
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 1.0,
          shadowColor: Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Imagem
                Expanded(
                  child: Image.asset(
                    item.imgUrl,
                    // fit: BoxFit.cover,
                  ),
                ),
            
                // Nome
                Text(
                  item.itemName,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        
                // Preço - unidade
                Row(
                  children: [
                    Text(
                      utilsServices.priceToCurrency(item.price,),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.customSwatchColor,
                      ),
                    ),
        
                    Text(
                      ' /${item.unit}',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),

        // btn carrinho
        Positioned(
          top: 4.0,
          right: 4.0,
          child: GestureDetector(
            onTap: () {
              print('clicou botão');
            },
            child: Container(
              height: 40.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: CustomColors.customSwatchColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}