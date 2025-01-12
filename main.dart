func(nb1, nb2) {
  final int sum = nb1 + nb2;
  return sum;
}

main() {
  print("123");

  var foo = "foo";
  // foo = 4;
  String para = "bar";
  bool isDead = true;
  double bill = 1.15;
  int nb1 = 123;
  const int CONSTANTE = 2;

  print(foo);
  print(para);
  print(para.toUpperCase());
  print('para lower ${para.toLowerCase()}');
  print('para lower ${para.toLowerCase()}');
  print(isDead);
  print(bill);
  print(nb1);
  print(CONSTANTE);
  print(func(nb1,2));
}
