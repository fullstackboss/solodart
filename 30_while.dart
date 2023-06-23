void main() {
  /*
  int index = 51;
  while (index <= 100) {
    print(index);
    if (index % 70 == 0) {
      print("😎");
      break;
    }
    index++;
  }
  print("👏");
  */

  int index = 50;
  while (index <= 100) {
    if (index == 70) {
      index++;
      print("Eliminando----");
      continue;
    }
    print(index);
    index++;
  }
  print("👏");
}
