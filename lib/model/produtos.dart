class Produtos {
  final String nome;
  final String preco;
  final String quantidade;
  bool comprado;

  Produtos(this.nome, this.preco, this.quantidade, this.comprado);

  //geração de uma lista dinâmica de Produtoss
  static List<Produtos> gerarLista() {
    List<Produtos> lista = [];
      lista.add(Produtos('Arroz','19,90', '5 Kg', true));
      lista.add(Produtos('Tomate','6,90', '2 Kg', false));
      lista.add(Produtos('Pimentão','9,90', '1 Kg', false));
      lista.add(Produtos('Alface','4,90', '1 Kg', true));
      lista.add(Produtos('Feijão','3,90', '1 Kg', false));
      lista.add(Produtos('Batata','6,90', '2 Kg', true));
    return lista;
  }
}