import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor[100],
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 25.0,
              shadows: [
                Shadow(
                  color: Color.fromARGB(255, 68, 67, 67),
                  offset: Offset(2.0, 2.0),
                  blurRadius: 6.0
                ),
            ]
            ),
            children: [
              TextSpan(
                text: 'Fruit',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Trace',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        
        // add carrinho com quantidade
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0, right: 15.0),
            child: GestureDetector(
              onTap: () {
                print('teste badge carrinho');
              },
              child: Badge(
                backgroundColor: Colors.red,
                label: Text(
                  '2',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ),
          ),
        ],
      ),

      // Campo de pesquisa
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                prefixIcon: Icon(Icons.search, color: CustomColors.customContrastColor, size: 21),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )
                ),
              ),
            ),
          ),
        ],
      ),
      // Categorias

      // Grid
    );
  }
}