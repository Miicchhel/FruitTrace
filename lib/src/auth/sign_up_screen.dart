import 'package:flutter/material.dart';
import 'package:fruittrace/src/auth/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: const Column(
        children: [

          // Titulo
          Expanded(
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white
                ),
              ),
            ),
          ),

          // Formulario

        ],
      ),
    );
  }
}