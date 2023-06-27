void main() {
  print(calculaEdad(''));

  final age = calculaEdad('2000-8-6');
}

//Funcion que devuelva null = nombreFuntion?
double? calculaEdad(String birthDayAsString) {
  final current = DateTime.now();
  final birthday = DateTime.tryParse(birthDayAsString);

  if (birthday != null) {
    final days = current.difference(birthday).inDays;
    final age = days / 365;

    return double.parse(
      age.toStringAsFixed(1),
    );
  }
  return null;
}
