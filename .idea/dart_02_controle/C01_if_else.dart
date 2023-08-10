import 'dart:math';

main() {
  var nota = Random().nextInt(11);//Random vai gerar um número aleatório entre 0 e 10
  print("Nota selecionada foi $nota.");

  if (nota >= 9) {//Se a nota for maior que 9
    print('Quadro de Honra!');//Printar o quadro de honra
  } else if (nota >= 7) {// Se a nota for maior que 7
    print('Aprovado!');// Printar aprovado
  } else if (nota >= 5) {// Se a nota for maior que 5
    print('Recuperação!');// Printar recuperação
  } else if (nota >= 4) {// Se a nota for maior que 4
    print('Recuperação + Trabalho!');// Printar recuperação + trabalho
  } else {
    print('Reprovado!');// Printar reprovado
  }
}
