import 'package:flutter/material.dart';
import 'package:fruittrace/src/auth/components/custom_text_field.dart';
import 'package:fruittrace/src/config/custom_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // máscara do cpf
  final cpfFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
    filter: {'#': RegExp(r'[0-9]')},
  );

  // máscara do telefone
  final phoneFormatter = MaskTextInputFormatter(
    mask: "(##) # ####-####",
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
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
                        CustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [phoneFormatter],
                        ),
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormatter],
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

              // btn voltar
              Positioned(
                left: 10.0,
                top: 10.0,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
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
            ],
          ),
        ),
      ),
    );
  }
}
