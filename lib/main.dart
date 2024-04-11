import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'view/addlista_view.dart';
import 'view/addprodutos_view.dart';
import 'view/home_view.dart';
import 'view/listacompras_view.dart';
import 'view/produtos_view.dart';
import 'view/sobre_view.dart';
import 'view/usuario/login_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      //
      //ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 'login_view',
      routes: {
        'produtos_view' :(context) => ProdutosView(),
        'listacompras_view' :(context) => ListaComprasView(),
        'sobre_view' :  (context) => SobreView(),
        'home_view' : (context) => Homeview(),
        'login_view' :(context) => LoginView(),
        'addlista_view' :(context) => AddlistaView(),
        'addprodutos_view' :(context) => AddProdutosView(),
      }
    );
  }
}
