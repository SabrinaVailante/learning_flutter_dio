import 'dart:math';

class GeradorNumeroAleatorioservice{
  static int gerarNumeroAleatorio() {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(1000);
  }
}