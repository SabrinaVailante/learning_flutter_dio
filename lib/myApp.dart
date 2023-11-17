import 'package:flutter/material.dart';
import 'package:leaningflutter/funcionalidades/views/gerador_de_numero_aleatorio.dart';
import 'package:leaningflutter/funcionalidades/views/tela_de_login_dio.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: const TelaDeLoginDio(),
    );
  }
}