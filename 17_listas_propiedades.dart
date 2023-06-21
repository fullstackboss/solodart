void main() {
  //Lista de Guerreros String
  List<String> guerreros = ["kakaroto", "vegeta", "bardock", "broly", "gohan"];
  print(guerreros);
  //Lista de numerosPares
  var numerosPares = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28];
  print(numerosPares);
  //Lista de numerosInpares
  var numerosInpares = <int>[1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  print(numerosInpares);

  //Lista de numerosAleatorios
  var numerosAleatorios = <int>[10, 3, 42, 8, 79, 12, 1, 15, 48, 9];
  print(numerosInpares);

  print("-------------------------------");

  /* PROPIEDADES */

  //lenght: Devuelve la cantidad de elementos de la lista
  print('La cantidad de elementos es: ${guerreros.length}');

  //Where: Filtra una lista y muestra los elementos
  final filtro = guerreros.where((e) => e.startsWith("b"));
  print(filtro);

  //add: Agrega un elemento al final de la lista
  guerreros.add("trunks");
  print(guerreros);

  //addAll: Agrega multiples elementos al final de la lista
  //Tiene que ser tipo lista
  numerosPares.addAll([30, 32, 34]);
  print(numerosPares);

  //remove:remueve un elemento de la lista
  numerosInpares.remove(9);
  print(numerosInpares);

  //removeAt:remueve un elemento de la lista segun el indici indicado
  numerosInpares.removeAt(2);
  print(numerosInpares);

  //contains(): verifica si la lista contiene un elemento especifico y deuelve un boolean
  var resultado1 = guerreros.contains("bulma"); // devuelve false
  var resultado2 = guerreros.contains("kakaroto"); // devuelve false
  print('$resultado1 $resultado2');

//sort:ordena los elemntos de una lista en forma ascendente
  numerosAleatorios.sort();
  print(numerosAleatorios);

  //reversed:ordena los elemntos de una lista en forma inversa. se le asigna a una lista en la declaracion
  List<int> listaInversa = numerosAleatorios.reversed.toList();
  print('en reversa seria: $listaInversa');

  //ForEach: ejecuta una funcion para cada elemento de la lista
  var suma = 0;
  numerosAleatorios.forEach((e) => suma += e);
  print(suma);

  //insert: inserta un elemento de la lista en una posicion especifica
  numerosAleatorios.insert(5, -678);
  print(numerosAleatorios);

  //clear: elimina todos los elemntos de una lista
  guerreros.clear();
  print(guerreros);

  //indexOf: devuelve el indice de la primera aparicion de un elemento de la lista
  var posicion = numerosAleatorios.indexOf(-678);
  print(posicion);

  //lastIndexOf: devuelve el indeice ce la ultima aparicion de un elemnto de la lista
  var posicion1 = numerosAleatorios.lastIndexOf(12);
  var posicion2 = numerosAleatorios.lastIndexOf(-349);
  print('la posicion del numero 12 esta en: $posicion1');
  print('la posicion del numero -349 no existe por eso devuelve: $posicion2');

  //subList: devuelve una nueva lista quye contiene una porcion de la original
  List<int> nuevaLista = numerosAleatorios.sublist(4, 8);
  print(nuevaLista);

  //Any: verifica si al menos un elemento de la lista cumple con la condicion...devuelve un boleano
  bool otraLista = numerosPares.any((element) => element % 2 == 0);
  print(otraLista);

  //Map: crea una lista nueva aplicando una funcion a cada elemento de las lista original
  print(numerosPares);
  List<int> listaDoble = numerosPares.map((e) => e * 2).toList();
  print(listaDoble);
}
