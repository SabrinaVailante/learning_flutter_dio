import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  TextEditingController dataNascimentoController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dados Cadastrais")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nome",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nomeController,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Data de Nascimento",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            TextField(
              readOnly: true,
              controller: dataNascimentoController,
              onTap: () async {
               var dataNascimento = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900,1,1),
                    lastDate: DateTime.now());
               print(dataNascimento);
                 if (dataNascimento!= null){
                   dataNascimentoController.text = dataNascimento.toString();
               }

              },
            ),
            TextButton(
              onPressed: () {
                print(nomeController.text);
              },
              child: const Text("salvar"),
            )
          ],
        ),
      ),
    );
  }
}
