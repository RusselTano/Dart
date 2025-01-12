class User {
  String name;
  int age;
  User(this.name, this.age);
}

main() {
  var liste1 = [1, 2, 3];
  List<int> list = [1, 2, 3, 4];

  print(list.length);
  list.remove(2);
  list.removeAt(2);

  list.forEach((f) {
    print(f);
  });

// map retourne un iterable
  var b = list.map((f) {
    return f * f;
  });

  print(liste1);
  print(list);
  print(b);
  print(b.toList());

  List<User> users = [
    User("Didi", 17),
    User("Bibi",19),
    User("Nini",24),
  ];

  Iterable<String> names = users.map((user) => user.name);
/**
 * je filtre et j'affiche avec le forEach
  Iterable<User> adults = users.where((user) => user.age >= 19);
  adults.forEach((adult) => print("Adult : ${adult.name}"));
 */

// je filtre et j'affiche
  Iterable<int> adults = users
    .where((user) => user.age >= 19)
    .map((user) => user.age);

  print(names);
  print(adults);
  print("adult ${adults}");
  print(names.toList());
  print(names.toSet());

// Map a plus de flexibilite en terme de cle (String, int, double)
  Map myMap = {
    "name": "jean",
    "age": 12,
    "hasGirlFriend": false,
    "isAdult": true,
    "grade": [13,56,90],

  };

  print(myMap.values);
  print(myMap.keys);
  
}
