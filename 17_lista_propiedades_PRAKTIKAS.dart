void main() {
  List<int> numerosAle = [2, 4, 8, 2, 0, 2, 65, 8, 32, 59, 7, 23, 2];
  List numerosPar = <int>[2, 4, 8, 12, 14, 16];
  List numerosInpar = <int>[3, 5, 7, 9, 11, 13];
  List numeros = [3, 15, 12, 43, 20, 18];
  List<int> numConsecutivos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> guerreros = [
    "kakaroto",
    "vegeta",
    "bardack",
    "broly",
    "turles",
    "vegeta",
    "trunks"
  ];
  List<String> superHeroes = [
    "superman",
    "batman",
    "robin",
    "supershica",
    "shehulk",
    "batman",
    "batman",
    "ironman",
    "hulk",
    "robin",
    "joker",
    "batman",
    "thor",
    "flash",
    "flechaverde",
    "hawkeye",
    "sandman"
  ];

  //Declaracion sin LIST
  var heroes = [];
  const listaConstante = [];
  final listaFinal = [];
  dynamic listaDinamica = [2, 3, 4, "kakaroto", true];

//WHERE
  print("-----------WHERE---------------");
  var nuevosHeroes = superHeroes.where((e) => e.startsWith("s"));
  print('el filtro resultante seria: $nuevosHeroes');
  print('la lista resultante seria: ${nuevosHeroes.toList()}');

//LASTWHERE
  print("-----------LASTWHERE---------------");
  var lastHeroes = superHeroes.lastWhere((e) => e.startsWith("s"));
  print('el filtro lastwhere resultante seria: $lastHeroes');

//CONTROL ERRORES LASTWHERE
  print("-----------LASTWHERE_ERROR---------------");
  //parametro no existe no reconocida..se debe controlar el error
  var lastHeroes2 = superHeroes.lastWhere(
    (e) => e.startsWith("x"),
    //se evita el KRASHEO
    orElse: () => "NO paso NADA",
  );
  print('el filtro lastwhere resultante seria: $lastHeroes2');

//INDEX
  print("-----------INDEXOF---------------");
  print(guerreros);
  var posicion = guerreros.indexOf("vegeta");
  var posicion2 = guerreros.indexOf("vegeta", 2);
  print('Esta en la posicion $posicion');
  print('Esta en la posicion $posicion2');

  //INDEXWHERE
  print("-----------INDEX-WHERE---------------");
  print(guerreros);
  var poswhere = guerreros.indexWhere((element) => element == "broly");
  print('Esta en la posicion $poswhere');

  //LASTINDEXOF
  print("-----------LASTINDEXOF---------------");
  print(guerreros);
  var posicionUltima = guerreros.lastIndexOf("vegeta");
  print('Esta en la posicion $posicionUltima');

//ADD
  print("-----------ADD---------------");
  print(numConsecutivos);
  numConsecutivos.add(11);
  print(numConsecutivos);

//INSERT
  print("-----------INSERT---------------");
  print(numConsecutivos);
  numConsecutivos.insert(1, 999);
  print(numConsecutivos);

//ADDALL
  print("-----------ADDALL---------------");
  print(numConsecutivos);
  numConsecutivos.addAll([12, 13, 14]);
  print(numConsecutivos);

  //REMOVE
  print("-----------REMOVE---------------");
  print(numeros);
  final valor = numeros.remove(20);
  print('Da como valor: $valor');
  print(numeros);

  //REMOVEAT
  print("-----------REMOVEAT---------------");
  print(numeros);
  numeros.removeAt(2);
  print(numeros);

  //REMOVEWHERE
  print("-----------REMOVEWHERE---------------");
  print(numerosAle);
  numerosAle.removeWhere((e) => e == 2);
  print(numerosAle);

  //CONTAINS
  print("-----------CONTAINS---------------");
  print(guerreros);
  final seEncuentra = guerreros.contains("turles");
  print('Da como valor: $seEncuentra');
  print(guerreros);

  //SORT
  print("-----------SORT---------------");
  print(numerosAle);
  numerosAle.sort();
  print(numerosAle);

  //REVERSED
  print("-----------REVERSED---------------");
  print(numerosAle);
  List<int> nuevaListareversed = numerosAle.reversed.toList();
  print(nuevaListareversed);

  //CLEAR
  print("-----------CLEAR---------------");
  listaDinamica.clear();
  print(listaDinamica);

  //SUBLISTA
  print("-----------SUBLISTA--------------");
  print(numerosAle);
  List<int> porcionLista = numerosAle.sublist(0, 2);
  print('Ahora la lista es $porcionLista');

  final colors = <String>['red', 'green', 'blue', 'orange', 'pink', "rojo"];
  print(colors.sublist(3)); // [orange, pink]
}
