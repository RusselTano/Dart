import "dart:async";

Future getData(){
  return Future.value("je suis de la data");
}

enum ModelType { modelS, modelX }

main() async {
  // Future<String> f = Future<String>.delayed(Duration(seconds: 3),(){
  //   return "fini";
  // });

  // f.then((String value){
  //   print(value);
  // });

  try {
    var data = await getData();
    print(data);   
  } catch (e) {
    print(e);
  }

  getData().then((data){

  });

  print("Hello");


}
