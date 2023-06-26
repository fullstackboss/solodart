void main() {
  final productos = <int, String>{
    1: "televisor",
    2: "radio",
  };

  final heroes = <int, String>{
    1: "superman",
    2: "batman",
    3: "Mujermaravilla",
    4: "aquaman",
    5: "flash",
  };

  //insertar un elemento si no existeria
  //Metodo 1: CONSTAINSKEY
  if (productos.containsKey(3) == false) {
    productos[3] = "macmini";
  }
  print(productos);

  //Metodo 2: PUTIFABSENT
  //Si el elemento/indice ya existe no hace ninguna modificacion
  final elemnto = productos.putIfAbsent(4, () => "Super Imac");
  print(productos);
  print(elemnto);

  //Eliminando varios elementos
  //REMOVEWHERE

  productos.removeWhere((key, value) => (key == 2 || key == 4));
  print(productos);

  productos.removeWhere((key, value) => (value == "televisor"));
  print(productos);

  //obteniendo las claves
  print('la lista de keys seria: ${heroes.keys}');
  print('la lista de keys como lista seria: ${heroes.keys.toList()}');

  //obteniendo los valores
  print('la lista de valores como lista seria: ${heroes.values.toList()}');
}
