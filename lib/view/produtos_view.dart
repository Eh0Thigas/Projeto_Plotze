import 'package:flutter/material.dart';


import '../model/produtos.dart';

class ProdutosView extends StatefulWidget {
  //final Produtos produto;
  const ProdutosView({super.key});


  @override
  State<ProdutosView> createState() => _ProdutosViewState();
}


class _ProdutosViewState extends State<ProdutosView> {

  List<Produtos> lista = [];
  var status = false;

  @override
  void initState() {
    lista = Produtos.gerarLista();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas de Produtos'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(

          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(lista[index].nome),
                hoverColor: Colors.red.shade50,
                //pressionar um item da lista
                trailing: Switch(
                  value: status,
                  onChanged: (bool value) {
                    setState(() {
                      lista[index].comprado = value;
                      status = lista[index].comprado;
                    });
                  },
                ),
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