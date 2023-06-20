void main() {
  const int limite = 100;
  const apiKey = "MY_API_KEY_0001";
  print(limite);
  print(apiKey);
  //No se purde modificar
  //limite = 101;

  //Datos inmutables con Clases con Const --El constructor de la clase debe ser CONST
  const lulu = Pet();
  //Datos inmutables con Clases con Final -- Si el constructor de la clase No tiene CONST
  final lala = new Heroe();
}

class Pet {
  const Pet();
}

class Heroe {
  Heroe();
}
