class User {
  String name;
  int age;
  User(this.name, this.age);
}

main() {
  void foo(String name, int age) {
    print("${name} a ${age} ans");
  }

// paramtre par default
  String foo2(String s1, [String s2 = "default"]) {
    return s1 + s2;
  }

// parametre optionnel
  String foo3(String s1, [String? s2]) {
    if (s2 != null)
      return s1 + s2;
    else
      return s1;
  }

// paramtre nommer ici on deux possibiliter
  // error
  // String foo4({String s1, String s2 = "default"}) {
  //   return s1 + s2;
  // }
  // 1 mettre une valeur par default
  // String foo4({String s1 = "", String s2 = "default"}) {
  //   return s1 + s2;
  // }
  // 2 indiquer que la valeur est obligatoire avec le keyword required
  String foo4({required String s1, String s2 = "default"}) {
    return s1 + s2;
  }

  foo("dylane", 20);
  print(foo2("yo ", "bro"));
  print(foo3("on ", "dit koi?"));
  print(foo4(s1: "on ", s2: "dit koi?"));
}
