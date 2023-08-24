void main() {
  final goku = Heroe("kakaroto", 7);
  print(goku);
}

class Heroe {
  String nombre;
  int edad;

  Heroe(this.nombre, this.edad);

  @override
  String toString() {
    return "Hola $nombre tienes una edad de $edad";
  }
}


// void main() {
//   final superSaiya = superHero(nombre: "vegeta", edad: 23, nivel: 190);
//   final namek = superHero.totalPoder("Piccolo", 34, 100);
//   print(superSaiya);
//   print(namek);
// }

// class superHero {
//   //parametros
//   String nombre;
//   int edad;
//   int nivel;

//   //constructores
//   superHero({required this.nombre, required this.edad, required this.nivel});
//   //factory
//   factory superHero.totalPoder(String nombre, int edad, int nivel) {
//     final neoPoder = edad * nivel;
//     return superHero(nombre: nombre, edad: edad, nivel: neoPoder);
//   }

//   //sobreescribir
//   @override
//   toString() {
//     return "Nombre: $nombre, Edad: $edad, Nivel: $nivel";
//   }
// }




































// void main() {
//   final superSaiya = new Heroe(nombre: "kakaroto", edad: 56, nivel: 105);
//   final namek = Heroe.duplicaEdad("Piccolo", 56, 5);
//   print(superSaiya);
//   print(namek);
// }

// class Heroe {
//   String nombre;
//   int edad;
//   int nivel;


//   Heroe({
//     required this.nombre,
//     required this.edad,
//     required this.nivel,
//   });


//   factory Heroe.duplicaEdad(String nombre, int miEdad, int nivel) {
//     final neoEdad = miEdad * nivel;
//     return Heroe(nombre: nombre, edad: neoEdad, nivel: nivel);
//   }


//   @override
//   toString() {
//     return "Nombre: $nombre, Edad: $edad";
//   }
// }
