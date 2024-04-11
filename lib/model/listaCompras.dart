import 'package:projeto/model/produtos.dart';

class ListaCompras {
  final String nome;
  List produto = [];

  ListaCompras(this.nome, this.produto);

  //geração de uma lista dinâmica de Usuarios
  static List<ListaCompras> gerarLista() {

    List<Produtos> listaProdutos = Produtos.gerarLista();
    List<Produtos> listaProdutosVazia = [];

    List<ListaCompras> lista = [];
      lista.add(ListaCompras('Limpeza', listaProdutos));
      lista.add(ListaCompras('Comida', listaProdutosVazia));
    return lista;
  }
}