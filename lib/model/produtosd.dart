class Produtosd {
  final String nome;
  final String preco;
  final String quantidade;
  bool comprado;

  Produtosd(this.nome, this.preco, this.quantidade, this.comprado);

  //geração de uma lista dinâmica de Produtosds
  static List<Produtosd> gerarLista() {
    List<Produtosd> lista = [];
      lista.add(Produtosd('Sabão','5,00', '2 unidade', true));
      lista.add(Produtosd('Detergente','6,90', '2 unidades', false));
      lista.add(Produtosd('Agua sanitaria','9,90', '1 L', false));
      lista.add(Produtosd('luvas','4,90', '1 par', true));
      lista.add(Produtosd('esfregão','13,90', '1 unidade', false));
    return lista;
  }
}