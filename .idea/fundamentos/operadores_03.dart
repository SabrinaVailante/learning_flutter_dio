main() {
  int a = 3;
  int b = 4;

  // Operadores Unários
  a++; // Posfix
  --a; // Prefix

  print(a);

  print(a++ == --b);// o b vai ser atualizado primeiramente pois e prefix
  print(a == b);

  // Operador Lógico Unário (NOT)
  print(!true);
  print(!false);

  bool x = false;
  print(!x);// negar
}

//infix = operador entre variaveis
//prefix = operador antes da variavel, tem prioridade na execução
//postfix = operador depois da variavel
