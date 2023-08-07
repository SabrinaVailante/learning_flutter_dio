/* Números (int e double)
 * Texto (String)
 * booleano (bool)
 * Dynamic
 */
import 'dart:math';
main()  {
  int n1 = 3;//
  double n2 = (-5.67).abs();//  abs() retorna o valor absoluto, ou seja, o valor absoluto de um número
  double n3 = double.parse("12.765");// converte string para double
  num n4 = 6; // o num é um tipo de dado que não pode ser alterado

  print(n1.abs() + n2 + n3 + n4); // abs() retorna o valor absoluto e soma os valores

  n4 = 6.7; // pode recber um novo valor
  print(n1.abs() + n2 + n3 + n4);// abs() retorna o valor absoluto e soma os valores

  String s1 = "Bom";//  String
  String s2 = " dia"; // String

  print(s1 + s2.toUpperCase() + "!!!");// concatena strings, o toUpperCase() transforma a string em maiúsculo

  bool estaChovendo = true; // boolean
  bool muitoFrio = false;

  print(estaChovendo && muitoFrio);

  dynamic x = "Um texto bem legal"; // O dynamic é um tipo especial usado
  // para permitir que as variáveis possam armazenar diferentes tipos de dados
  // em tempo de execução. Isso oferece flexibilidade, mas também pode levar
  // a complicações e problemas de segurança em certos casos.
  print(x);// imprime o texto "Um texto bem legal"

  x = 123;
  print(x);// imprime 123 =  a mesma variavel que tinha um texto agr tem um inteiro

  x = false;
  print(x);

  var y = "Outro texto bem legal!";
  // y = 123;
  print(y);
}