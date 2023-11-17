import 'dart:math';

class GeradorNumeroAleatorioservice{
  static int gerarNumeroAleatorio(int numeroMax) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numeroMax);
  }
}