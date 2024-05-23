import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fruittrace/src/auth/components/custom_text_field.dart';
import 'package:fruittrace/src/auth/config/custom_colors.dart';
import 'package:fruittrace/src/auth/sign_up_screen.dart';
import 'package:fruittrace/src/base/base_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              // parte de cima
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 40.0,
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(255, 68, 67, 67),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 6.0
                            ),
                          ]
                        ),
                        children: [
                          TextSpan(
                            text: 'Fruit',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Trace',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ),
                    
                    // Categorias
                    SizedBox(
                      height: 30.0,
                      child: DefaultTextStyle(
                        style: TextStyle( 
                          fontSize: 22.0, 
                          color: CustomColors.customContrastColor,
                          shadows: const [
                            Shadow(
                              color: Color.fromARGB(255, 68, 67, 67),
                              offset: Offset(1.0, 1.0),
                              blurRadius: 4.0
                            ),
                          ]
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Frutas', textStyle: const TextStyle(color: Colors.white),),
                            FadeAnimatedText('Abacaxi'),
                            FadeAnimatedText('Goiaba'),
                            FadeAnimatedText('Manga'),
                            FadeAnimatedText('Acerola'),
                            FadeAnimatedText('Caju'),
                            FadeAnimatedText('Uva'),
                            FadeAnimatedText('Graviola'),
                            FadeAnimatedText('Tangerina'),
                            FadeAnimatedText('Mangaba'),
                            FadeAnimatedText('Pinha'),
                            FadeAnimatedText('Pitanga'),
                            FadeAnimatedText('Morango'),
                            FadeAnimatedText('Maracujá'),
                            FadeAnimatedText('Cupuaçu'),
                            FadeAnimatedText('Cajá'),
                            FadeAnimatedText('Misturas', textStyle: const TextStyle(color: Colors.white),),
                            FadeAnimatedText('Abacaxi c/ hortelã'),
                            FadeAnimatedText('Guaráçai'),
                            FadeAnimatedText('Guarabom'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ), 
              ),
              
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

                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                              return BaseScreen(); 
                            }),
                          );
                        },
              
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
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
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

                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUpScreen())
                          );
                        },
                      
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
        ),
      ),
    );
  }
}
