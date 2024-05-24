import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 1.0,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          // Imagem

          // Nome

          // Preço - unidade

        ],
      ),
    );
  }
}