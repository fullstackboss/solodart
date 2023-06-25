void main() {
  //Sumar los elementos de una lista:
  final List<int> lista1 = [3, 4, 35, 10, 3, 1, 85, 2, 150];
  final List<int> lista2 = [5, 6, 7, 10];
  final List<int> lista3 = [3, 4, 35, 10, 3, 1, 85, 2, 150];
  final List<int> lista4 = [3, 4, 35, 10, 3, 1, -85, 2, -150];
  /*
  List<int> sumaListas = [];
  //sumando ambas listas
  sumaListas.addAll(lista1);
  sumaListas.addAll(lista2);
  print(sumaListas);*/
//sumando los elementos
  int suma = 0;
  for (var i in lista1) {
    suma += i;
  }
  print(suma);
  lista1.sort();
  int valormax = lista1[lista1.length - 1];
  print(valormax);

  //otra forma
  print("Empezemos-------------------------");
  print(lista3);
  var maximo = 0;
  for (var i = 0; i < lista3.length - 1; i++) {
    if (lista3[i + 1] > lista3[i]) {
      maximo = lista3[i + 1];
      print('Ahora $maximo es el numero maximo');
    } else {
      continue;
    }
    print(maximo);
  }
  //conmtar la cantidad de elementos pares de una lista
  List<int> listaPares = [];
  listaPares = lista3.where((element) => element % 2 == 0).toList();
  print('La cantidad de elementos pares es ${listaPares.length}');

  //verificar si son positivos
  print("---evaluemops negativcos---");
  print(lista4);
  bool negativos = true;
  for (var i = 0; i < lista4.length; i++) {
    if ((lista4[i] < 0)) {
      negativos = true;
      print(lista4[i]);
      break;
    } else {
      negativos = false;
    }
  }
  print(negativos);

//calcula el promedio de una lista
  double promedio = 0;
  double sumaNotas = 0;
  for (var i = 0; i < lista2.length; i++) {
    sumaNotas += lista2[i];
  }
  promedio = sumaNotas / lista2.length;
  print(promedio);
//filtrar una lista y obtener valores mayores a un valor dado
  print("---numero mayores---");
  List numMayores = [];
  int numReferencia = 23;
  print(lista3);
  numMayores = lista3.where((element) => element > numReferencia).toList();
  print(numMayores);

//iterar sobre un map
  print("---iterando Mapa---");
  Map<int, String> mimap = {
    1: "kakaroto",
    2: "broly",
    3: "vegeta",
    4: "trunks",
    5: "bardock",
    6: "gohan",
  };
  print(mimap);
  for (var item in mimap.entries) {
    print('Registro: ${item.key}:${item.value}');
  }

  //busca el valor en base a una clave
  var clave = 1;
  mimap.forEach((key, value) {
    if (clave == key) {
      print(value);
    }
  });

  //bucle while
  print("---imprimiendo del 1 al 10---");
  int contador = 1;
  while (contador <= 10) {
    print(contador);
    contador++;
  }

  //contador regresivo
  print("--- regresivo del 10 al 1---");
  int conta = 10;
  do {
    print(conta);
    conta--;
  } while (conta >= 1);

//obtener la cantidad e cada palabra en una lista de string
  print("--- contando cada palabra de lista---");
  List neolista = [];
  List<String> listadoPalabras = ["hola", "como estas", "yomuybien"];
  for (String item in listadoPalabras) {
    neolista.add(item.length);
  }
  print(neolista);

//cual es la palabra mas larga de la lista mimap
  List<String> heroes = [
    "kakaroto",
    "broly",
    "Principevegeta",
    "trunks",
    "bardock",
  ];
  print("--- el nombre mas largo ---");
  print(heroes);
  String maxpalabra = "";
  for (int j = 0; j < heroes.length - 1; j++) {
    if (heroes[j].length > heroes[j + 1].length) {
      maxpalabra = heroes[j];
    }
  }
  print(maxpalabra);
  ;

//fusionando listas
  var esaLista = ['uno', 'dos'];
  var otraLista = ['tres', 'cuatro'];
  var nuevalista = [];
  nuevalista.addAll(esaLista);
  nuevalista.addAll(otraLista);
  print(nuevalista);

  //verificar si una lista esta ordenada
  print("--- verificando orden ---");
  final List<int> listaOrdenada = [1, 3, 27, 8];
  bool isOrdered = true;
  for (var i = 0; i < listaOrdenada.length - 1; i++) {
    if (listaOrdenada[i] < listaOrdenada[i + 1]) {
      isOrdered = true;
    } else {
      isOrdered = false;
      break;
    }
  }
  print(isOrdered);

  //calcular la suma de los vaslores de un mapa
  print("--- calculando la suma de valorede de un mapa ---");
  Map<int, int> misNums = {
    1: 102,
    2: 2,
    3: 4,
    4: 6,
    5: 10,
    6: 16,
  };
  int sumanumeros = 0;
  for (int element in misNums.values) {
    sumanumeros += element;
  }
  print("la suma de sumanumeros es $sumanumeros");

  //encontrar todas las claves de un mapa que tenga valores pares
  List listapares = [];
  for (var item in misNums.keys) {
    if ((item % 2) == 0) {
      listapares.add(item);
    }
  }
  print(listapares);

  //Filtrar una lista de strings y eliminar los elementos vacíos:
  List<String> lisTxt = ["holas", "a", "", "todos, ", "como", "", "estan"];
  List nuevaLista = [];
  for (var elemento in lisTxt) {
    if (!elemento.isEmpty) {
      nuevaLista.add(elemento);
    }
  }
  print(nuevaLista);

  //Convertir una lista de strings en un mapa donde las claves son las palabras y los valores son su longitud:
  print("--- De lista a mapa ---");
  List<String> listString = [
    "gohan",
    "kakaroto",
    'goku',
    'pikoro',
    'vegeta',
  ];
  Map<String, int> neoMapString = {};
  for (var item in listString) {
    neoMapString[item] = item.length;
  }
  print(neoMapString);

//Obtener la lista de claves de un mapa ordenadas alfabéticamente:
  print("--- listas ordenadas ---");
  Map<int, int> listax = {
    1: 102,
    4: 2,
    7: 4,
    24: 6,
    5: 10,
    9: 16,
  };
  final listO = <int>[];
  for (var element in listax.keys) {
    listO.add(element);
    listO.sort();
  }
  print(listO);
  //Eliminar todas las ocurrencias de un valor específico de una lista:
  /*
  List<dynamic> eliminarOcurrencias(List<dynamic> lista, dynamic valor) {
  lista.removeWhere((elemento) => elemento == valor);
  return lista;
}*/
  print("--- Eliminando ocurrencias ---");
  List<String> listaFinal = [
    "gohan",
    "kakaroto",
    "gohan",
    'goku',
    'pikoro',
    'vegeta',
    'vegeta',
    "gohan",
  ];
  print(listaFinal);
  List listNeoOcurrencia = [];
  bool dato;
  for (int i = 0; i < listaFinal.length - 1; i++) {
    if ((listaFinal.where((element) => element == listaFinal[i]).length) == 1) {
      listNeoOcurrencia.add(listaFinal[i]);
    }
    ;
    //Fin
  }
  print(listNeoOcurrencia);
}
