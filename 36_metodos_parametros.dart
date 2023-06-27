void main() {
  print(calculaEdad(
      birthDay: DateTime(1985, 6, 12), decimales: 4, redondeo: false));

  print(calculaEdad2(
      birthDay: DateTime(1985, 6, 12), decimales: null, redondeo: false));
}

//CON PARAMETROS
double calculaEdad({
  required DateTime birthDay,
  required int decimales,
  required bool redondeo,
}) {
  final hoy = DateTime.now();
  final nacimiento = birthDay;
  var resultado = hoy.difference(nacimiento).inDays / 365;
  resultado = double.parse(resultado.toStringAsFixed(decimales));
  if (redondeo) {
    resultado = resultado.round().toDouble();
    print("redonde activado");
  }
  return resultado;
}

//CON PARAMETROS DE NOMBRES
calculaEdad2({
  DateTime? birthDay,
  int? decimales,
  bool? redondeo,
})
//resto
{
  final hoy = DateTime.now();
  final nacimiento = birthDay;

  return hoy;
}
