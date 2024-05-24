import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/home/components/category_title.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  List<String> categories = [
    'Tropicais',
    'Cítricas',
    'Vermelhas',
    'Exóticas',
    'Clássicas',
  ];

  String selectedCategory = 'Tropicais';

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

      body: Column(
        children: [
          // Campo de pesquisa
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
          
          // Categorias
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            height: 40.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => CategoryTitle(
                category: categories[index],
                isSelected: categories[index] == selectedCategory,
                onPressed: () {
                  setState(() {
                    selectedCategory = categories[index];                  
                  });
                },
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 10.0,),
              itemCount: categories.length,
            ),
          ),

          // Grid
        ],
      ),
    );
  }
}