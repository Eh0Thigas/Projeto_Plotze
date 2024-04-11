import 'package:flutter/material.dart';
import 'package:projeto/view/usuario/cadastroUsuario_view.dart';

import '../../model/usuario.dart';
import '../home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  List<Usuario> listaUsuario = [];
  var titulo = "Login";
  var formKey = GlobalKey<FormState>();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 50),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Center(
                child: Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: txtEmail,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Digite a seu email';
                  } else if (value.isEmpty) {
                    return 'Digite a seu email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: txtSenha,

                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),

                //
                // Validação
                //
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite a sua senha';
                  } else if (value.length < 8) {
                    return "Sua senha deve ter no minimo 8 caracteres";
                  }
                  return null;
                },
                obscureText: true,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(100, 60),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          var email = txtEmail.text;
                          var senha = txtSenha.text;                         
                          if(email == 'android@email.com' && senha == "androide"){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => const Homeview())
                            );
                          }
                        
                        });
                        
                      } else {
                        //Erro na Validação
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
