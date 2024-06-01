import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/models/item_model.dart';
import 'package:fruittrace/src/pages/common_widgets/quantityWidget.dart';
import 'package:fruittrace/src/services/utils_services.dart';

class ProductScreen extends StatefulWidget {
  final ItemModel item;

  ProductScreen({super.key, required this.item});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int CartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),

      body: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [

            // conteúdo
            Column(
              children: [
                Expanded(
                  child: Hero(
                    tag: widget.item.imgUrl,
                    child: Image.asset(widget.item.imgUrl),
                  ),
                ),
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
                                  widget.item.itemName,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // botão de add quantidade
                              Quantitywidget(
                                value: CartItemQuantity,
                                suffixText: widget.item.unit,
                                result: (int quantity) {
                                  setState(() {
                                    CartItemQuantity = quantity;
                                  });
                                },
                              ),
                            ],
                          ),
            
                          // preço
                          Text(
                            utilsServices.priceToCurrency(widget.item.price),
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
                                  widget.item.description,
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
          
            // btm voltar
            Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(widget.item),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(255, 68, 67, 67),
                        offset: Offset(2.0, 2.0),
                        blurRadius: 6.0),
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