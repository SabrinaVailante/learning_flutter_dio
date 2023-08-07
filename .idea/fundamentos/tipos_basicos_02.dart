/*
  - List
  - Set
  - Map
*/
main() {
  //List
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael']; // lista de strings
  aprovados.add('Daniel'); // adiciona um elemento na lista
  print(aprovados is List); // verifica se é uma lista
  print(aprovados); // imprime a lista
  print(aprovados.elementAt(2)); // imprime o elemento do índice 2
  print(aprovados[0]); // imprime o elemento do índice 0
  print(aprovados.length); // imprime o tamanho da lista
  aprovados[0] =
      'Maria'; // altera o elemento do índice 0 para mostrar que foi alterado
  print(aprovados[0]); // imprime o elemento do índice 0
  aprovados.remove('Maria'); // remove o elemento do índice 0
  print(aprovados[0]); // imprime o elemento do índice 0
  //aprovados.clear(); // limpa a lista
  //aprovados.removeAt(0); // remove o elemento do índice 0
  // print(aprovados[0]);// imprime o elemento do índice 0

  var telefones = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (21) 12345-6789',
    'Pedro': '+55 (85) 45455-8989',
    'João': '+55 (11) 77777-7777',
  }; // cria um mapa, uma mapa de chave e valor

  /*Map" é frequentemente usado para se referir a um tipo de coleção que
  armazena pares chave-valor, muito semelhante a um dicionário em outras
  linguagens de programação. É uma estrutura de dados que permite associar
  valores a chaves para uma busca eficiente e acesso rápido.
  Em Dart (a linguagem de programação usada no Flutter), um "Map" é uma
  classe que representa essa estrutura de dados.
   */

  print(telefones is Map);    // verifica se é um mapa
  print(telefones);            // imprime o mapa
  print(telefones['João']);   // imprime o elemento do índice 'João'
  print(telefones.length);    // imprime o tamanho do mapa
  print(telefones.keys);       // imprime as chaves do mapa
  print(telefones.values);     // imprime os valores do mapa
  print(telefones.entries);    // imprime as chaves e valores

  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};  // cria um conjunto  = set
  print(times is Set);  // verifica se é um conjunto
  times.add('Palmeiras'); // adiciona um elemento na lista
  times.add('Palmeiras'); // adiciona um elemento na lista, não adiciona repetidos
  times.add('Palmeiras'); // adiciona um elemento na lista,   não adiciona repetidos
  print(times.length);  // imprime o tamanho do conjunto
  print(times.contains('Vasco'));
  print(times.first);  // imprime o primeiro elemento
  print(times.last);  //
  print(times); // imprime o conjunto
}
