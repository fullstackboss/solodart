void main() {
  List<int> numAleatorios = [2, 3, 4, 5, 7, 3, 43, 12, 8, 90, 49, 100];
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

  List lista = numRepetidos;
  print(lista.toSet().toList());

  var auxiliar;
  for (int i = 0; i < numAleatorios.length; i++) {
    if (numAleatorios[i] >= numAleatorios[i]) {
      auxiliar = numAleatorios[i];
    }
  }
  print(auxiliar);
}
