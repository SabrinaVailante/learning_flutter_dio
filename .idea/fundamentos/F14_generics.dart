main() {
  print('Início');

  List<String> frutas = ['banana', 'maça', 'laranja'];
  frutas.add('melão');

  print(frutas);
/* Generics especifica o tipo que sera usado. O map tera apenas o tipo String e o tipo double.*/
  Map<String, double> salarios = {
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiário': 600.00,
  };

  print(salarios);
}

/*Generics (ou genéricos) são uma característica  que permite escrever código que
pode ser reutilizado com diferentes tipos de dados, enquanto mantém a segurança de tipos.
Isso é especialmente útil quando você deseja criar algoritmos ou estruturas de dados
  que funcionam da mesma maneira, independentemente do tipo de dados que eles manipulam.

Em Dart (a linguagem usada no Flutter), os genéricos são representados pelo
uso dos símbolos <T> (ou outros identificadores) para indicar tipos genéricos.
 Você pode definir funções, classes e interfaces genéricas.
 */


