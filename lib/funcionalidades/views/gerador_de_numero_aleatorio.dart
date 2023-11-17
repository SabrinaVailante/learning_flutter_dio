import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leaningflutter/funcionalidades/services/gerar_numero_aleatorio.dart';

class GeradorDeNumeroAleatorio extends StatefulWidget {
  const GeradorDeNumeroAleatorio({super.key});

  @override
  State<GeradorDeNumeroAleatorio> createState() =>
      _GeradorDeNumeroAleatorioState();
}

class _GeradorDeNumeroAleatorioState extends State<GeradorDeNumeroAleatorio> {
  var numeroGerado = 0;
  var quantidadeDeClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gerador de Número Aleatório",
          style: GoogleFonts.kalam(),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,// mexe na posição da linha quando usa o colun
          mainAxisAlignment: MainAxisAlignment.center,//mexe na posição culuna quando usa o Colun
          children: [
            Center(
              child: Text(
                "Foi clicado $quantidadeDeClicks vezes.",
                style: GoogleFonts.acme(fontSize: 30),
              ),
            ),//O center tem prioridade a orientaçao do cross e so mais Axis
            Center(
              child: Text(
                "o numero gerado é $numeroGerado.",
                style: GoogleFonts.acme(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            quantidadeDeClicks++;
            numeroGerado =
                GeradorNumeroAleatorioservice.gerarNumeroAleatorio(10);
          });
        },
      ),
    );
  }
}
