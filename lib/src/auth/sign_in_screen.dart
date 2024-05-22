import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fruittrace/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          // parte de cimay
          Expanded(child: Container(color: Colors.red)),
          
          // parte de baixo
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 40.0,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Email
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email'
                ),
                
                // Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
          
                // btn Entrar
                SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {},
          
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      )
                    ),
          
                    child: const Text(
                      'Entrar', 
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
          
                // btn Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                
                // Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.grey[400],
                        ),
                      ),
                  
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        child: Text('Ou'),
                      ),
                      
                      Expanded(
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
          
                // btn Cadastrar
                SizedBox(
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: (){},
                  
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                      side: const BorderSide(
                        width: 2.0,
                        color: Colors.green,
                      ),
                    ),
                  
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    )
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
