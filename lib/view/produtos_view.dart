import 'package:flutter/material.dart';

import '../model/produtos.dart';

class ProdutosView extends StatefulWidget {
  //final Produtos produto;
  const ProdutosView({super.key});


  @override
  State<ProdutosView> createState() => _ProdutosViewState();
}


class _ProdutosViewState extends State<ProdutosView> {

  List<Produtos> listaProdutos = [];
  bool status = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    listaProdutos = ModalRoute.of(context)!.settings.arguments as List<Produtos>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Listas de Produtos'),
      ),
      body: ListView.builder(
          itemCount: listaProdutos.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(listaProdutos[index].nome),
                hoverColor: Colors.red.shade50,
                //pressionar um item da lista
                trailing: Switch(
                  value: listaProdutos[index].comprado,
                  onChanged: (value) {
                    setState(() {
                      listaProdutos[index].comprado = !listaProdutos[index].comprado;
                    });
                  },
                ),
                //remover um item da lista
                onLongPress: () {
                  setState(() {
                    listaProdutos.removeAt(index);
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
              'addprodutos_view',
              arguments: listaProdutos,
            );
            //lista.add(ListaCompras("Abajur"));
          },
          child: Icon(Icons.add),
        ),
      );
  }
}