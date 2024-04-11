import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

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
    return const MaterialApp(
      home: LoginView(),
      color: Color.fromARGB(255, 158, 197, 230)
    );
  }
}
