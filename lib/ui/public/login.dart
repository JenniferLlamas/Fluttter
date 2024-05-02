// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:capacitacion/components/Box.dart';
import 'package:flutter_vector_icons/src/entypo.dart';
import 'package:flutter/widgets.dart';

class LoginRoute extends StatelessWidget {
  String title;

  LoginRoute({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: const Text("Login Route "),
    );
  }
}

class LoginForm extends StatefulWidget {
  String title;

  LoginForm({required this.title});

  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isLoading = false;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    MediaQueryData media = MediaQuery.of(context);

    List<Widget> options = [
      const Text("¿Olvidaste tu contraseña?"),
      GestureDetector(
        child: const Text(
          "Haz click aqui para restaurarla",
          style: TextStyle(
              color: Color.fromRGBO(100, 24, 195, 1),
              decoration: TextDecoration.underline),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(107, 36, 195, 1),
      body: Form(
        key: formkey,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: SizedBox(
              width: 350, // Ancho específico para el card
              height: 550, // Altura específica para el card
              child: Card(
                color: Color.fromRGBO(251, 251, 251, 1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Text(
                              'Bienvenido de Nuevo',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          'Por favor, ingresa tus credenciales para iniciar sesión',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 10, top: 20),
                        child: const Text(
                          'CORREO ELECTRÓNICO ',
                          style: TextStyle(
                            color: Color.fromRGBO(199, 199, 199, 1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _username,
                        keyboardType: TextInputType.emailAddress,
                       
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                             
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin:  EdgeInsets.symmetric(vertical:10.0),
                        padding: const EdgeInsets.only(bottom: 10),
                        child: const Text(
                          'CONTRASEÑA ',
                          style: TextStyle(
                            color: Color.fromRGBO(199, 199, 199, 1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _password,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child:
                                Icon(color: themeData.primaryColor, Entypo.eye),
                          ),
                        ),
                        obscureText: true,
                      ),
                      Container(
                         width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        margin:  EdgeInsets.symmetric(vertical: 20.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(107, 36, 195, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                     
                     
                     
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 0),
                        child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween, // Todo a la derecha
                            children: [
                              Text(
                                '¿Olvidaste tu contraseña? ',
                                style: TextStyle(
                                  color: Color.fromRGBO(199, 199, 199 , 1),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Restaurar Aquí ',
                                style: TextStyle(
                                  color: Color.fromRGBO(107, 36, 195, 1),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                          width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 14),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(227, 40, 175, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "CREAR UNA CUENTA",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
