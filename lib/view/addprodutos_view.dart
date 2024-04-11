import 'package:flutter/material.dart';

import '../model/produtos.dart';

class AddProdutosView extends StatefulWidget {
  const AddProdutosView({super.key});

  @override
  State<AddProdutosView> createState() => _AddProdutosViewState();
}

class _AddProdutosViewState extends State<AddProdutosView> {
  List<Produtos> listaProdutos = [];

  var titulo = "Adicionar Produto";

  var formKey = GlobalKey<FormState>();
  var txtNome = TextEditingController();
  var txtPreco = TextEditingController();
  var txtQuantidade = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    listaProdutos = ModalRoute.of(context)!.settings.arguments as List<Produtos>;
    print(listaProdutos.length);

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
                controller: txtNome,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Digite a seu Nome';
                  } else if (value.isEmpty) {
                    return 'Digite a seu Nome';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: txtPreco,
                decoration: const InputDecoration(
                  labelText: 'Preço',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Digite o preço do produto';
                  } else if (value.isEmpty) {
                    return 'Digite o preço do produto';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: txtQuantidade,
                decoration: const InputDecoration(
                  labelText: 'Quantidade',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Digite a quantidade';
                  } else if (value.isEmpty) {
                    return 'Digite a quantidade';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
             
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
                          String nome = txtNome.text;
                          String preco = txtPreco.text;
                          String quantidade = txtQuantidade.text;
                          listaProdutos.add(Produtos(nome,preco, quantidade , false));
                          Navigator.pop(context);                    
                      } else {
                        //Erro na Validação
                      }
                    },
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                   OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(100, 60),
                    ),
                    onPressed: () {
                      Navigator.pop(context);              
                    },
                    child: const Text(
                      'Voltar',
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
