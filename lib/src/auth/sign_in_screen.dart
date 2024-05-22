import 'package:flutter/material.dart';
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
          Expanded(
            child: Container(
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
              child: const Column(
                children: [
                  // Email
                  CustomTextField(
                    icon: Icons.email,
                    label: 'Email'
                  ),
                  
                  //Senha
                  CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
