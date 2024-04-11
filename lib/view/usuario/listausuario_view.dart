import 'package:flutter/material.dart';

import '../../model/listaCompras.dart';
import '../../model/usuario.dart';

class ListausuarioView extends StatefulWidget {
  const ListausuarioView({super.key});

  @override
  State<ListausuarioView> createState() => _ListaUsuarioViewState();
}

class _ListaUsuarioViewState extends State<ListausuarioView> {
  List<Usuario> lista = [];

  @override
  void initState() {
    lista = Usuario.gerarLista();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final listaUsuario = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Listas de Usuario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        //
        // ListView
        //
        child: ListView.builder(
          //Quantidade de itens
          itemCount: lista.length,
          //Aparência de cada item
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(lista[index].nome),
                subtitle: Text(lista[index].email),
                hoverColor: Colors.red.shade50,
                //pressionar um item da lista
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(lista[index].nome)),
                  );
                },
                //remover um item da lista
                onLongPress: () {
                  setState(() {
                    lista.removeAt(index);
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}