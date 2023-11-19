import 'package:flutter/material.dart';

class DadosCadastrais extends StatelessWidget {
  const DadosCadastrais({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dados Cadastrais")),
      body: Center(child: Text("dados cadastrais"),),
    );
  }
}
