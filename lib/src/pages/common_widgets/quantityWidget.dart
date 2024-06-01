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
          Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(50.0),
              onTap: () {},
              child: Ink(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.remove, color: Colors.white, size: 16,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}