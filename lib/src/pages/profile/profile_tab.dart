import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/pages/common_widgets/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.customSwatchColor[200],
        centerTitle: true,
        title: const Text(
          'Perfil do usuário',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Color.fromARGB(255, 68, 67, 67),
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.green,
            ),
          ),],
      ),

      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [

          // imagem do usuário
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 18.0),
          //   child: Container(
          //     width: 150,
          //     height: 150,
          //     decoration: const BoxDecoration(
          //       shape: BoxShape.circle,
          //       image: DecorationImage(
          //         image: AssetImage('assets/profile.jpeg'),
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          // ),

          // nome do usuário
          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
          ),

          // email do usuário
          CustomTextField(
            icon: Icons.email,
            label: 'Email',
          ),

          // celular do usuário
          CustomTextField(
            icon: Icons.phone,
            label: 'Celular',
          ),

          // CPF do usuário
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),
        ],
      ),
    );
  }
}