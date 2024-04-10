class Usuario {
  final String nome;
  final String email;
  final String senha;

  Usuario(this.nome, this.email, this.senha);

  //geração de uma lista dinâmica de Usuarios
  static List<Usuario> gerarLista() {
    List<Usuario> lista = [];
      lista.add(Usuario('android','android@email.com', 'androide'));
      lista.add(Usuario('LUcas','lucas@email.com', 'lucas111'));
    return lista;
  }
}