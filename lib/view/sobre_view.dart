import 'package:flutter/material.dart';

class SobreView extends StatefulWidget {
  const SobreView({super.key});

  @override
  State<SobreView> createState() => _SobreViewState();
}

class _SobreViewState extends State<SobreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra de Título
      appBar: AppBar(
        title: Text(
          'Sobre',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        
      ),

      //Corpo
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
                Icons.account_circle,
                size: 120,
                color: Colors.black,
              ),
          Card(
            color: Colors.blue.shade50,
            child: ListTile(
                title: Text("Desenvolvedor"),
                subtitle: Text("Thiago Laurenti Coelho"),
            )
          ), 

          Card(
            color: Colors.blue.shade50,
            child: ListTile(
                title: Text("Tema"),
                subtitle: Text("Mercadinho de esquina "),
            )
          ), 

          Card(
            color: Colors.blue.shade50,
            child: ListTile(
                title: Text("Objetivo"),
                subtitle: Text("Criar um aplicativo de compras"),
            )
          )
        ],
      ),
    );
  }
}
