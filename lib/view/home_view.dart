import 'package:flutter/material.dart';



import '../model/usuario.dart';
import 'usuario/cadastroUsuario_view.dart';
import 'listaCompras_view.dart';
import 'usuario/listausuario_view.dart';
import 'sobre_view.dart';


class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class  _HomeviewState extends State<Homeview> {
  var texto = "Lojinha do seu Zé";
  List<Usuario> listaUsuario = [];
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 'Home',
      routes: {
        'Home': (context) => Homeview(),
        'Lista': (context) => ListaComprasView(),
        'Usuario': (context) => ListausuarioView(),
        'Sobre': (context) => SobreView(),
      },
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 50),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  texto,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
              
              SizedBox(height: 30),
          
              Icon(
                  Icons.settings_accessibility,
                  size: 120,
                  color: Colors.black,
                ),
                SizedBox(height: 60),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                    ),
                    onPressed:(){
                      Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const ListausuarioView())
                              );
                    },
                    child: const Text(
                        'Listas de Usuarios',
                        style: TextStyle(fontSize: 14),
                      ),
                  ),
          
                   OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(50, 50),
                    ),
                    onPressed:(){
                      Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const ListaComprasView())
                              );
                    },
                    child: const Text(
                        'Listas de Compras',
                        style: TextStyle(fontSize: 14),
                      ),
                  ),
                ]
              ),  
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(100, 60),
                    ),
                    onPressed:(){
                      Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const CadastroUsuarioView())
                              );
                    },
                    child: const Text(
                        'Cadastrar Usuario',
                        style: TextStyle(fontSize: 14),
                      ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(100, 60),
                    ),
                    onPressed:(){
                      Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const SobreView())
                              );
                    },
                    child: const Text(
                        'Sobre',
                        style: TextStyle(fontSize: 14),
                      ),
                  ) 
                ],
                )
            ]
          ),
        ),
      )
    );
  }
}