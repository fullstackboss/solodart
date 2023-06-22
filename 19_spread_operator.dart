void main() {
  List<int> miLista1 = [1, 2, 3, 4];
  //metodo clasico para agregar elementos
  miLista1.addAll([5, 6, 7]);
  print('mi nueva lista1: $miLista1');

  //Con DESTRUCTURACION
  List<int> miLista2 = [1, 2, 3, 4];
  miLista2 = [...miLista2, 5, 6, 7];
  print('mi nueva lista2: $miLista2');

  //Con MAPS
  Map<String, dynamic> json = {
    "name": "kakaroto",
    "lastaname": "bardock",
  };
  print(json);
  json["age"] = 45;
  json["country"] = "Napoles";
  print(json);

  //DESTRUCTURANDO
  Map<String, dynamic> json2 = {
    "name": "kakaroto",
    "lastaname": "bardock",
  };
  print(json2);
  json2 = {
    ...json2,
    "age": 45,
    "country": "bardock",
  };
  print('\nEl nuevo json2 es:  \n$json2');

  //Se puede cambiar el order de los ...
}
