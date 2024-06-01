import 'package:flutter/material.dart';

class Quantitywidget extends StatelessWidget {
  const Quantitywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1.0,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              print('clicked');
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.remove, color: Colors.white, size: 16,),
            ),
          ),
        ],
      ),
    );
  }
}