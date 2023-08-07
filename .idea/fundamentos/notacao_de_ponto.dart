main() {
  double nota = 6.99.roundToDouble();// roundToDouble() retorna a parte inteira
  print(nota);  // 7.0

  print("Texto".toUpperCase()); // Texto.toUpperCase() retorna o texto com todas as letras maiúsculas

  String s1 = "leonardo leitão";  //
  String s2 = s1.substring(0, 8); // substring() retorna uma substring, que é uma parte do texto do index 0 a 7, 8 caracteres
  String s3 = s2.toUpperCase(); // s2.toUpperCase() retorna o texto com todas as letras maiúsculas
  String s4 = s3.padRight(15, "!"); // s3.padRight() retorna o texto com as 15 caracteres completando com um caractere específico.

  var s5 = "leonardo leitão".substring(0, 8).toUpperCase().padRight(15, '!');

  print(s4);
  print(s5);
}


//A notação de ponto (dot notation) em Dart é usada para acessar propriedades,
// métodos e membros de um objeto.
// É uma forma de interagir com as características e comportamentos de um
// objeto através do uso do operador ponto ..
//A notação de ponto é fundamental para interagir com objetos e acessar
// seus membros em Dart. Ela permite que você acesse propriedades, métodos e
// membros de uma maneira clara e concisa.