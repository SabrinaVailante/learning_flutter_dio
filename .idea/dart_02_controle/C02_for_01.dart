main() {
  //O COMANDO FOR, para uam variavei igual a 1, equanfoela for menor ou igual a 10, increment 2 em 2
  for (int a = 1; a <= 10; a += 2) {
    print('a = $a');
  }

  for (int a = 100; a >= 0; a -= 4) {
    print('a = $a');
  }

  int b = 0;
  for (; b <= 10; b++) {
    print('b = $b');
  }

  print('[FORA] b = $b');
  print('Fim!');
}
