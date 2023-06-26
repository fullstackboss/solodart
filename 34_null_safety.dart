void main() {
  /* String? name;
  final n = name?.length;
  if (n != null) {
    print(n + 7);
  } */

  String palabra = "hola";
  print(palabra.length);

  bool? isAdmin = null;
  print(isAdmin);
  String text = "pizza";
  if (text == "pizza") {
    isAdmin = true;
  }
  if (isAdmin!) {
    print("hELLO");
  }
}
