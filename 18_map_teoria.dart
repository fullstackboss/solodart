void main() {
//-------------------DECLARANDO MAPS-----------------------

//Formalmente
  Map<String, String> mapa1 = {};

//Con VAR y dart analiza el tipo de map
  var mapa2 = {1: "cliente"};

//Con VAR y dart analiza el tipo de map OBJECT => porque tiene diferentes tipos de valores
  var mapa3 = {1: "cliente", 2: 45};
  var mapa31 = <int, String>{};

//con FINAL
  final Map<int, String> mapa4 = {};
  final mapa5 = <int, String>{};

//-------------------DECLARANDO MAPS-----------------------

  Map<String, String> usuarios = {};
  usuarios["usuario1"] = "kakaroto";
  usuarios["usuario2"] = "bardock";
  print(usuarios);

  usuarios["usuario1"] = "goku";
  print(usuarios);

  final eliminado = usuarios.remove("usuario1x");
  print(usuarios);
  print('$eliminado ha sido eliminado');

  //Se puede asignar un Map vacio...porque no esta declarado como Final
  usuarios.clear();
  //tambien se puede usar ==> usuarios = {};
  print(usuarios);

  final Map<String, String> mapHeroes = {
    "heroe1": "ironman",
    "heroe2": "spiderman"
  };
  print('la lista de heroes inicialmente es: $mapHeroes');
  //No se puede asignar o settear esta variable final
  //mapHeroes = {};

//pero si se puede limpiar con el metodo
  mapHeroes.clear();
  print('limpiando lista: $mapHeroes');
  //asignamos varios elementos
  mapHeroes.addAll({
    "heroe3": "superman",
    "heroe4": "batman",
    "heroe5": "conan",
  });
  print(mapHeroes);

  Map<int, String> productos = {};
  productos[1] = "laptop";
  print(productos);

  Map<int, String> productos2 = {
    1: "laptop",
    2: "ipad",
  };
  //cambiamo el valor del primer elemento
  productos2[2] = 'ipad PRO';

  //Eliminamos un item
  productos2.remove(2);

  print(productos2);
}
