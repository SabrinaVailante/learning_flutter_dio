import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leaningflutter/repositories/nivel_repositorie.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  TextEditingController dataNascimentoController =
      TextEditingController(text: "");
  var niveis = [];
  var nivelRepository = NivelRepository();
  var nivelSelecionado = "";

  @override
  void initState() {
    niveis = nivelRepository.retornarNiveis();
    super.initState();
  }

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
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nomeController,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
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
                    firstDate: DateTime(1900, 1, 1),
                    lastDate: DateTime(2030, 1, 1));

                if (dataNascimento != null) {
                  dataNascimentoController.text = dataNascimento.toString();
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Nivel de Experiencia",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Column(
              children: niveis
                  .map((nivel) => RadioListTile(
                dense: true,
                      title: Text(nivel),
                      selected: nivelSelecionado == nivel,
                      value: nivel,
                      groupValue: nivelSelecionado,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          nivelSelecionado = value.toString();
                        });

                      }))
                  .toList(),
            ),
            TextButton(
              onPressed: () {
                print(nomeController.text);
                print(dataNascimentoController.text);
                print(nivelSelecionado.toString());
              },
              child: const Text("salvar"),
            )
          ],
        ),
      ),
    );
  }
}
