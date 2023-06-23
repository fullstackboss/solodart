void main() {
  int valor = 10;
  for (var i = 0; i <= valor; i++) {
    if (i == 3) {
      print("Elimnando----");
      continue;
    }
    print("i=$i");
    if (i == 5) {
      break;
    }
  }
  print("😎");

  //imprimendo caracteres de un string
  final String name = "kakaroto";
  for (var i = 0; i < name.length; i++) {
    print(name[i]);
  }
  final lista = [02, 30, 5, 7, 8, 9];
  final neolista = [];
  for (var item in lista) {
    print(item);
  }
  print(neolista);

  //con MAPS
  Map<int, String> heroes = {
    1: "kakaroto",
    2: "vegeta",
    3: "broly",
  };

  for (final element in heroes.entries) {
    print("la clave es ${element.key} element y su valor es ${element.value}");
  }
  for (final element in heroes.keys) {
    print(element);
  }
  for (final element in heroes.values) {
    print(element);
  }
}
