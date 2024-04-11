import 'package:flutter/material.dart';

import '../model/listaCompras.dart';
import 'addlista_view.dart';
import 'produtos_view.dart';

class ListaComprasView extends StatefulWidget {
  const ListaComprasView({super.key});

  @override
  State<ListaComprasView> createState() => _ListaComprasViewState();
}

class _ListaComprasViewState extends State<ListaComprasView> {
  List<ListaCompras> listaCompras = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    listaCompras = ModalRoute.of(context)!.settings.arguments as List<ListaCompras>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Listas de Compras'),
      ),
      body: ListView.builder(
          itemCount: listaCompras.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(listaCompras[index].nome),
                hoverColor: Colors.red.shade50,
                //pressionar um item da lista
                trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.pushNamed(context, 'produtos_view', arguments: listaCompras[index].produto);
                      },
                //remover um item da lista
                onLongPress: () {
                  setState(() {
                    listaCompras.removeAt(index);
                  });
                },
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(
              context,
              'addlista_view',
              arguments: listaCompras,
            );
            //lista.add(ListaCompras("Abajur"));
          },
          child: Icon(Icons.add),
        ),
      );
    
  }
}