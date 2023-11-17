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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerador de Número Aleatório",
        style: GoogleFonts.kalam(),),
      ),
      body: Center(
        child: Text(numeroGerado.toString(),
        style: GoogleFonts.acme(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumeroAleatorioservice.gerarNumeroAleatorio(10);
          });
        },
      ),
    );
  }
}
