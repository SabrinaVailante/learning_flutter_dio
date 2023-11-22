import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leaningflutter/repositories/linguagens_repositories.dart';
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
  var linguagens = [];
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var nivelSelecionado = "";
  var linguagensSelecionadas = [];
  double salarioescolhido = 0.0;
  int tempoDeexperiencia = 1;

  @override
  void initState() {
    niveis = nivelRepository.retornarNiveis();
    linguagens = linguagensRepository.retornarLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> retornarItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i <= quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(
        child: Text(i.toString()),
        value: i,
      ));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dados Cadastrais")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
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
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Linguagens Preferidas",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Column(
                children: linguagens
                    .map(
                      (linguagem) => CheckboxListTile(
                          dense: true,
                          title: Text(linguagem),
                          value: linguagensSelecionadas.contains(linguagem),
                          onChanged: (bool? value) {
                            if (value!) {
                              setState(() {
                                linguagensSelecionadas.add(linguagem);
                              });
                            } else {
                              setState(() {
                                linguagensSelecionadas.remove(linguagem);
                              });
                            }
                          }),
                    )
                    .toList()),
            const SizedBox(
              height: 20,
            ),
            const Text("Tempo de experiencia",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            DropdownButton(
                value: tempoDeexperiencia,
                isExpanded: true,
                items: retornarItens(50),
                onChanged: (value) {
                  setState(() {
                    tempoDeexperiencia = int.parse(value.toString());
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            Text(
                "pretenção salarial R\$ ${salarioescolhido.round().toString()}",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            Slider(
                min: 0.0,
                max: 10000.0,
                value: salarioescolhido,
                onChanged: (double value) {
                  setState(() {
                    salarioescolhido = value;
                  });
                  print(value);
                }),
            TextButton(
              onPressed: () {
                print(nomeController.text);
                print(dataNascimentoController.text);
                print(nivelSelecionado.toString());
                print(linguagensSelecionadas.toString());
              },
              child: const Text("salvar"),
            )
          ],
        ),
      ),
    );
  }
}
