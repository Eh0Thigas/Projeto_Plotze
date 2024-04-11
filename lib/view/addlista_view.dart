import 'package:flutter/material.dart';
import 'package:projeto/model/listaCompras.dart';
import 'package:projeto/model/produtos.dart';


class AddlistaView extends StatefulWidget {
  const AddlistaView({super.key});

  @override
  State<AddlistaView> createState() => _AddlistaViewState();
}

class _AddlistaViewState extends State<AddlistaView> {
  List<ListaCompras> listaCompras = [];
  var titulo = "Adicionar Lista";
  var formKey = GlobalKey<FormState>();
  var txtNome = TextEditingController();


  @override
  Widget build(BuildContext context) {

    listaCompras = ModalRoute.of(context)!.settings.arguments as List<ListaCompras>;

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
                          var nome = txtNome.text;
                          List<Produtos> listProdutosVazia = [];
                          listaCompras.add(ListaCompras(nome, listProdutosVazia));

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
