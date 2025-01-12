import 'Car.dart';
import 'main.dart';
export "Car.dart";

class Tesla<T> extends Car {
  ModelType model;
  int year;
  bool autodrive = false;
  String name = "";
  T data;

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
      required this.data,
      this.name =
          "Dupont"}); // parametre nomme: mieux on peut placer les para dans l'ordre qu'on veux
  //constructeur nommer
  Tesla.WithAutodrive(
      {required this.model, this.year = 2020, this.autodrive = true, required this.data,}) {}
}