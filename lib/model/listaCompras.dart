class ListaCompras {
  final String nome;
  List produto = [];
  ListaCompras(this.nome);

  //geração de uma lista dinâmica de Usuarios
  static List<ListaCompras> gerarLista() {
    List<ListaCompras> lista = [];
      lista.add(ListaCompras('Limpeza',));
      lista.add(ListaCompras('Comida'));
    return lista;
  }
}