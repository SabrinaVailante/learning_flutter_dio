import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leaningflutter/funcionalidades/services/gerar_numero_aleatorio.dart';

class GeradorDeNumeroAleatorio extends StatefulWidget {
  const GeradorDeNumeroAleatorio({Key? key}) : super(key: key);

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
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Número Gerado:",
                style: GoogleFonts.acme(fontSize: 30),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: double.infinity,
                color: const Color.fromRGBO(246, 74, 5, 0.40),
                child: Center(
                  child: Text(
                    numeroGerado.toString(),
                    style: GoogleFonts.acme(fontSize: 60),
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 50)),
                ),
                onPressed: () {
                  setState(() {
                    quantidadeDeClicks++;
                    numeroGerado =
                        GeradorNumeroAleatorioservice.gerarNumeroAleatorio(100);
                  });
                },
                child: const Text("Gerar", style: TextStyle(fontSize: 25),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
