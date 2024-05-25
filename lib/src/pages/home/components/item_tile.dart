import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/models/item_model.dart';

class ItemTile extends StatelessWidget {
  
  final ItemModel item;

  const ItemTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  item.price.toString(), 
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
    );
  }
}