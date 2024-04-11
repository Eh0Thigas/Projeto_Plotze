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
  List<ListaCompras> lista = [];



  @override
  void initState() {
    lista = ListaCompras.gerarLista();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas de Compras'),
      ),
      body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(lista[index].nome),
                hoverColor: Colors.red.shade50,
                //pressionar um item da lista
                trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProdutosView(),
                          ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) => const AddlistaView())
            // );
            lista.add(ListaCompras("Abajur"));
          },
          child: Icon(Icons.add),
        ),
      );
    
  }
}