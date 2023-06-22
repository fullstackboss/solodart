void main() {
  List<int> listaNum = [2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> listaDuplicada = [2, 3, 3, 5, 3, 2, 3, 9, 3, 8, 10, 2, 7, 2];
  int suma = 0;
  for (var i = 0; i < listaNum.length; i++) {
    suma += listaNum[i];
  }
  print(suma);
////////////////////////////////////////
  List neoLista = [];
  neoLista = listaNum.where((element) => element % 2 == 0).toList();
  print(neoLista);

  List<int> pares = [];
  for (int elemento in listaNum) {
    if (elemento % 2 == 0) {
      pares.add(elemento);
    }
  }
  print('la lista 2 seria: $pares');

  /*
  Invertir lista: Escribe una función que tome una lista como entrada y devuelva una nueva lista que contenga los mismos elementos pero en orden inverso.
  List<dynamic> invertirLista(List<dynamic> lista) {
  List<dynamic> invertida = [];
  for (int i = lista.length - 1; i >= 0; i--) {
    invertida.add(lista[i]);
  }
  return invertida;
}
  */
  List listaInversa = listaNum.reversed.toList();
  print(listaInversa);

/*
Eliminar duplicados: Escribe una función que tome una lista como entrada y devuelva una nueva lista que elimine todos los elementos duplicados de la lista original.
List<dynamic> eliminarDuplicados(List<dynamic> lista) {
  List<dynamic> sinDuplicados = [];
  for (dynamic elemento in lista) {
    if (!sinDuplicados.contains(elemento)) {
      sinDuplicados.add(elemento);
    }
  }
  return sinDuplicados;
}
*/
  print("------------------");
  print(listaDuplicada);
  List noDuplica = [];
  for (var i = 0; i < listaDuplicada.length; i++) {
    if (listaDuplicada.contains(listaDuplicada[i])) {
      noDuplica.add(listaDuplicada[i]);
    }
  }
  print(noDuplica);

  List<dynamic> sinDuplicados = [];
  for (dynamic elemento in listaDuplicada) {
    if (!sinDuplicados.contains(elemento)) {
      sinDuplicados.add(elemento);
    }
  }
  print(sinDuplicados);

/*
Combinar listas: Escribe una función que tome dos listas como entrada y devuelva una nueva lista que contenga la combinación de ambas listas.
List<dynamic> combinarListas(List<dynamic> lista1, List<dynamic> lista2) {
  List<dynamic> combinada = [];
  combinada.addAll(lista1);
  combinada.addAll(lista2);
  return combinada;
}

 */
}
