import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruittrace/src/auth/components/custom_text_field.dart';
import 'package:fruittrace/src/auth/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          // Titulo
          const Expanded(
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(
                  fontSize: 35.0,
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

          // Formulario
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomTextField(
                  icon: Icons.person,
                  label: 'Nome',
                ),
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                const CustomTextField(
                  icon: Icons.phone,
                  label: 'Celular',
                ),
                const CustomTextField(
                  icon: Icons.file_copy,
                  label: 'CPF',
                ),
                SizedBox(
                  height: 50.0,
                  child: ElevatedButton(

                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                    ),

                    child: const Text(
                      'Cadastrar usuário',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
