main(){
  var n1 = 2;
  var n2 = 4.56;
  var t1 = "texto";

  print(n1+n2);
  print(t1);

  print(n1.runtimeType);//runtimeType imprime  tipo da variavel no console
  print(n2.runtimeType);
  print(t1.runtimeType);

  print(n1 is int);
  print(n1 is String);

  // print("texto" +n1 +n2  )
  // o dart nao concatena strings e numericos inferidos
  // exceto com toString:
  print("texto"+n1.toString() + n2.toString());
  print("texto"+(n1 + n2).toString());
}

// com o var, o compilador infere qual é o tipo de variavel que será utilizada.
// O compilador é capaz de inferir que a variável "numero" é do tipo
// inteiro (int), com base no valor atribuído a ela.
//Inferência é o processo de deduzir ou descobrir algo a partir de evidências,
//informações ou contextos disponíveis. No contexto da programação de computadores,
//a inferência de tipos refere-se à capacidade de um compilador ou interpretador
//determinar automaticamente o tipo de dado associado a uma variável, expressão ou
//valor sem a necessidade de especificação explícita por parte do programador.
//
// A inferência de tipos é uma característica de linguagens de programação que
// visa simplificar o desenvolvimento, tornando o código mais conciso e legível.
// Em vez de declarar explicitamente o tipo de cada variável, o compilador pode analisar
// o contexto em que a variável é usada e determinar o tipo apropriado.*/