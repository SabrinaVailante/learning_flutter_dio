main() {
  // Operadores Atribuição (binário/infix)
  double a = 2;
  a = a + 3; // a recebe o valor de a + 3
  a += 3;    // a recebe o valor de a + 3
  a -= 3;    // a recebe o valor de a - 3
  a *= 3;    // a recebe o valor de a * 3
  a /= 5;    // a recebe o valor de a / 5
  a %= 2;    // a recebe o valor de a % 2

  print(a);

  // Operadores Relacionais (binário/infix) -> O resultado sempre é BOOL
  print(3 > 2); //maior que
  print(3 >= 3);// maior ou igual
  print(3 < 4);// menor que
  print(3 <= 3);  // menor ou igual
  print(3 != 3);// diferente
  print(3 == 3);  // igual -  verdade
  print(3 == '3');  //  igual - false


  print(2 + 5 > 3 - 1 && 4 + 7 != 7 - 4);// verdade


  // 101 = 5
  // 100 = 4
  // 100 = 4
  print(5 & 4);// 4
}
