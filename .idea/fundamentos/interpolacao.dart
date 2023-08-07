main() {
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;

  String frase1 =
      nome + " está " + status + " pq tirou nota " + nota.toString() + "!";// concatenação normal
  String frase2 = "$nome está $status pq tirou nota $nota!";// concatenação com $, interpolação,

  print(frase1);
  print(frase2);

  print("30 * 30 = ${30 * 30}");
}

/*A interpolação de strings é uma técnica usada em linguagens de programação para
criar strings que incorporam valores de variáveis ou expressões diretamente dentro
delas. Isso torna a construção de strings mais conveniente e legível,
pois evita a necessidade de concatenar strings e variáveis separadamente.
 Em Dart (a linguagem usada no Flutter), a interpolação de strings é feita usando
 o símbolo $ seguido pelo nome da variável ou expressão a ser inserida na
 string. Também é possível usar ${expressao} para interpolar expressões mais complexas.
 */
