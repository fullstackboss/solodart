void main() {
  final fechaActual = DateTime.now();
  final weekDay = fechaActual.weekday;
  //print(weekDay);

  final hoy = 7;
  switch (hoy) {
    case 1:
      print("Lunes");
      break;
    case 2:
      print("Martes");
      break;
    case 3:
      print("Miercoles");
      break;
    case 4:
      print("Jueves");
      break;
    case 5:
      print("Viernes");
      break;
    case 6:
      print("Sabado");
      break;
    case 7:
      print("Domingo");
      break;
    default:
      print("No hay nada");
  }

  final caso = 6;
  switch (caso) {
    case 1:
    case 2:
    case 3:
      print("Casos del 1 al 3");
      break;
    case 4:
      print("caso 4");
      break;
    default:
      print("No hay nada");
  }
}
