import 'dart:io';

main() {
  stdout.write("Está chovendo? (s/N)");//s ou n
  bool estaChovendo = stdin.readLineSync() == "s"; //recebe s ou n, o s éo valor padrao

  stdout.write("Está frio? (s/N)"); //s ou n
  bool estaFrio = stdin.readLineSync() == "s";//recebe s ou n
  //Operador ternário
  //condilçao = verdadeiro ? faça se verdadeiro : faca se falso
  String resultado = estaChovendo && estaFrio ? "Ficar em casa" : "Sair!!!";
  print(resultado);
  print(estaChovendo && estaFrio ? "Azarado!" : "Sortudo!");
}

