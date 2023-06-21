void main() {
  //Declaracion
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7];
  print(numeros);

  //Declaracion
  var letras = ["uno", "dos", "tres"];
  print(letras);

//Declaracion

  var codigos = [];
  print(codigos.runtimeType);
  //Si no sabes que elementos...Dart lo declara como Dynamic

//Declaracion de listas sin elementos. Se especifica el tipo antes de la lista <>
  var nombres = <String>[];
  print(nombres.runtimeType);

  //Para agregar elementos
  numeros.add(9);
  print(numeros);
}
