enum ModelType { modelS, modelX }

class Car {
  int wheels = 4;
  String engine;

  Car({this.engine = "electrique"});

  void startCar() {
    print("Car started !");
  }
}

class Tesla extends Car {
  ModelType model;
  int year;
  bool autodrive = false;
  String name = "";

  String get getName {
    return "Mr: ${name}";
  }

  set setName(String name) {
    this.name = name;
  }

  @override
  void startCar() {
    print("Tesla started !");
  }

  static String about() {
    return "Class about car";
  }

  // Tesla(this.model); // parametre positionnel: pas tres lisible
  Tesla(
      {required this.model,
      required this.year,
      this.name =
          "Dupont"}); // parametre nomme: mieux on peut placer les para dans l'ordre qu'on veux
  //constructeur nommer
  Tesla.WithAutodrive(
      {required this.model, this.year = 2020, this.autodrive = true}) {}
}

main() {
  Tesla car = Tesla(model: ModelType.modelS, year: 2024);
  Tesla betterCar = Tesla.WithAutodrive(model: ModelType.modelX);

  print(car.model);
  print(car.getName);
  print(betterCar.model);
  car.startCar();
  // methode static about est disponible uniquement sur la classe tesla
  print(Tesla.about());

  print(car.engine);
}
