void main() {
  List<int> numAleatorios = [
    1,
    83,
    100,
    43,
    75,
    100,
    67,
    3,
    43,
    12,
    8,
    90,
    49,
    100
  ];
  List<int> numRepetidos = [2, 3, 2, 5, 5, 3, 4, 4, 8, 4, 5, 6];
  List<String> nombres = [
    "kakaroto",
    "trunks",
    "vegeta",
    "gohan",
    "broly",
    "bulma",
    "goku",
    "turles"
  ];

  final busca = numAleatorios.where((item) => item <= 20).toList();
  final indexwhere = numAleatorios.indexWhere((e) => e == 43);
  print(busca);
  print("el indexwhere es: $indexwhere");

  numAleatorios.removeWhere((item) => item == 100);
  print(numAleatorios);
}
