// for in

main() {
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];// lista de notas

  for (var nota in notas) { // percorre a lista, para uma nota dentro da lista de notas
    print("O valor da nota é $nota."); // imaprima o valor da nota
  }


  var coordenadas = [
    [1, 3],
    [9, 1],
    [19, 23],
    [2, 14],
  ];

  for (var coordenada in coordenadas) {// percorre a lista de coordenadas, para uma coordenada dentro da lista de coordenadas
    for (var ponto in coordenada) {// percorre a lista de pontos, para um ponto dentro da lista de pontos, que e a coodenada
      print("Valor do ponto é $ponto");// imprimi o valor do ponto
    }
  }
}
//lista dentro de lista