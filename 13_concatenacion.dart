void main() {
  String nombre = "kakaroto";
  String apellido = "Bardack";
  int edad = 46;

//No muy optimo
  print("Resultado:" +
      " " +
      nombre +
      " " +
      apellido +
      " Tiene una edad de " +
      edad.toString());

  //Muy optimo
  print(
      'Resultado: $nombre $apellido tiene una edad de $edad y tiene una longitud de ${nombre.length} y apellido ${apellido.contains('B')}');
}
