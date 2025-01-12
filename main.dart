import 'Tesla.dart';
import "dart:math";
// import 'Tesla.dart' as MyTesla;
// import 'Tesla.dart' hide;
// import 'Tesla.dart' show Tesla, Car ecupere uniquement Tesla et Car;
// import 'Tesla.dart' deferred as TeslaLazy;

enum ModelType { modelS, modelX }

main() {
  // Tesla car = Tesla<String>(model: ModelType.modelS, year: 2024, data: "data");
  var car = Tesla<String>(model: ModelType.modelS, year: 2024, data: "data");
  // Tesla car = Tesla(model: ModelType.modelS, year: 2024, data: "data");
  Tesla<int> betterCar =
      Tesla<int>.WithAutodrive(model: ModelType.modelX, data: 17);

  print(car.model);
  print(car.getName);
  print(betterCar.model);
  car.startCar();
  // methode static about est disponible uniquement sur la classe tesla
  print(Tesla.about());

  Car car2 = Car(engine: "pop");

  print(car.engine);
  print(car2.engine);
  print(car.data);
  print(betterCar.data);

  List list = [1, 2, 4, 7, 48, 3, 8, 45];
  int nbMax = list.first;
  list.forEach((nb) => nbMax = max(nbMax, nb));

  print(nbMax);
}
