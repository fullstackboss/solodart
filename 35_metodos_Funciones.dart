void main() {
  final cumpleanos = DateTime(1990, 9, 18);
  /* final fechaActual = DateTime.now();
  final diferencia = miDia.difference(fechaActual).inDays / 365;
  print(diferencia); */
  print(calculaEdad(cumpleanos));
  print(calculaEdad2(cumpleanos, 1));
}

//----------------------------------------------------------------//
//FUERA DE LA FUNCION
//----------------------------------------------------------------//

//Definiendo la funcion
double calculaEdad(DateTime fecha) {
  final fechaActual = DateTime.now();
  final miDia = fecha;
  final diferencia = miDia.difference(fechaActual).inDays / 365;
  return diferencia;
}

//Mas corto
double calculaEdad2(DateTime fecha, int decimal) {
  final resultado = fecha.difference(DateTime.now()).inDays / 365;
  //toStringAsFixed ayuda a redondear un double => retorna un string por lo que hay que parsear a Double
  return double.parse(resultado.toStringAsFixed(decimal));
}
