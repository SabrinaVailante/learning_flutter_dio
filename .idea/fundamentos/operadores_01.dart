main() {
  // Operadores Aritméticos (binário/infix)
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado); // 10
  print(a - b); // 4 subtrair
  print(a * b);   // 21 multiplicar
  print(a / b);   // 2 dividir
  print(a % b);   // 1 resto
  print(33 % 2);    // 1 resto, ou seja, 1, ou seja, impar
  print(34 % 2);    // 0 resto  ou seja, 0, ou seja, par
  print(a + (b * a) - (b / a));

  // Operadores Lógicos
  bool ehFragil = true;
  bool ehCaro = true;

  print(ehFragil && ehCaro); // AND -> E
  print(ehFragil || ehCaro); // OR -> OU
  print(ehFragil ^ ehCaro); // XOR -> OU exclusivo , um deles é verdadeiro, o outro é falso, obrigatoriamente
  print(!ehFragil); // NOT -> Unário/Prefix
  print(!!ehCaro);//negar duas vezes volta a ser verdadeiro
}
