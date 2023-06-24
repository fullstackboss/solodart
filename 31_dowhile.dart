void main() {
  int index = 10;
  do {
    print(index);
    index++;
    if (index == 40) {
      index++;
      print("Eliminando-------");
      continue;
    }
    if (index == 50) {
      break;
    }
  } while (index <= 100);
  print("🤣");
}
