import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dados Cadastrais")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             const Text(
              "Nome",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nomeController,
            ),
            TextButton(onPressed: (){
              print(nomeController.text);
            }, child: const Text("salvar"),)
          ],
        ),
      ),
    );
  }
}
