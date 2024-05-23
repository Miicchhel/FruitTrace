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

      // Categorias

      // Grid
    );
  }
}

// Badge(
//    backgroundColor: CustomColors.customContrastColor,
//    label: Text(
//       '2'
//       style: const TextStyle(
//       color: Colors.white,
//       fontSize: 12,
//    ),
// ),
// child: