import 'dart:io';
main(){
  //área de circunferencia  = 2 * pi * raio;
  const pi = 3.1415;

  stdout.write("Informe o raio: ");// escreva no console - saida padrao
  final entradaDoUsuario = stdin.readLineSync()!; // le a entrada , teclado, tem que ser uma string.
  //o ! indica que a entrada deve ser um valor diferente de nulo
  final double raio = double.parse(entradaDoUsuario);// converter string para double

  final area = pi * raio * raio;
  print( " O valor da área é " +area.toString());

  //const = constante, não pode ser alterado, é uma palavra reservada, pode ser definida no momento da compilação.
  //final = constante, não pode ser alterado, é uma palavra reservada, pode ser definida em execução.


}