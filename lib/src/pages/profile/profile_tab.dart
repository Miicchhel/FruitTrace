import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:fruittrace/src/pages/common_widgets/custom_text_field.dart';
import 'package:fruittrace/src/config/app_data.dart' as app_data;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
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
        children: [

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
            initialValue: app_data.user.name,
            icon: Icons.person,
            label: 'Nome',
            readOnly: true,
          ),

          // email do usuário
          CustomTextField(
            initialValue: app_data.user.email,
            icon: Icons.email,
            label: 'Email',
            readOnly: true,
          ),

          // celular do usuário
          CustomTextField(
            initialValue: app_data.user.phone,
            icon: Icons.phone,
            label: 'Celular',
            readOnly: true,
          ),

          // CPF do usuário
          CustomTextField(
            initialValue: app_data.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
            readOnly: true,
          ),

          // btn para abrir o dialog de atualização de senha
          SizedBox(
            height: 50.0,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text('Atulizar senha'),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // titulo
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'Atualização de senha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
              
                    // senha atual
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha atual',
                      isSecret: true,
                    ),
                    
                    // nova senha
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: 'Nova senha',
                      isSecret: true,
                    ),
                    
                    // confirmar nova senha
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: 'Confirmar nova senha',
                      isSecret: true,
                    ),

                    // btn para atualizar a senha
                    SizedBox(
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.customSwatchColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Atualizar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // botão fechar
              Positioned(
                top: 5.0,
                right: 5.0,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}