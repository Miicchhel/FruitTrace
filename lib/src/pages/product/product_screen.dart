import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/models/item_model.dart';
import 'package:fruittrace/src/services/utils_services.dart';

class ProductScreen extends StatelessWidget {
  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();

  ProductScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),

      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(child: Image.asset(item.imgUrl)),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(0.0, 1.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    // informações do item
                    children: [
                      // nome - quantidade
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              item.itemName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(width: 70, height: 30, color: Colors.amber,),
                        ],
                      ),

                      // preço
                      Text(
                        utilsServices.priceToCurrency(item.price),
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),

                      // descrição
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SingleChildScrollView(
                            child: Text(
                              item.description,
                              style: const TextStyle(
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // btn de adicionar ao carrinho
                      SizedBox(
                        height: 55.0,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),

                          onPressed: () {},
                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),

                          label: const Text(
                            'Adicionar ao carrinho',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}