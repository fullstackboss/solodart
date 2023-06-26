void main() {
  final user = <String, Object>{
    "name": "Darwin",
    "lastname": "Morocho",
    "age": 28,
    "email": "micorreo@test.com",
    "salary": 86900,
    "enabled": true,
    "location": {
      "country": "Peru",
      "countrycode": "EC006",
      "city": "Cayambe",
    },
    "pets": [
      {
        "name": "fidodido",
        "edad": 4,
      },
      {
        "name": "firulai",
        "edad": 6,
      },
    ],
  };

//recuperando los datos
  var edad = user['age'];
  var email = user['email'];

  print(
      'la edad seria: $edad y su email: $email que empieza con la letra ${email.toString()[0]}');

//accediendo mas adentro
  final location = user['location'];
  final ciudad = (location as Map<String, String>)['country'];
  print('el country es "$ciudad"');

  //PROBLEMAS:
  //OBJECT te avisa en tiempo de Ejecucion
  //DYNAMIC No te avisa en tiempo de ejecucion---No ayuda a detectar los errores

/*--------------------CON DYNAMIC----------------------*/
  final usuario = <String, dynamic>{
    "name": "Darwin",
    "lastname": "Morocho",
    "age": 28,
    "email": "micorreo@test.com",
    "salary": 86900,
    "enabled": true,
    "location": {
      "country": "Peru",
      "countrycode": "EC006",
      "city": "Cayambe",
    },
    "pets": [
      {
        "name": "fidodido",
        "edad": 4,
      },
      {
        "name": "firulai",
        "edad": 6,
      },
    ],
  };

//Accedemos de frente nomas
  final neoLocation = usuario['location']['country'];
  print('el country tambien es: $neoLocation');
  print(usuario['pets'][0]['name']);

  //tambien se puede usar Casting
  //se puede omitir <String, dynamic>
  final List<Map<String, dynamic>> pets = usuario['pets'];
  print(pets);
  final List<Map> pets2 = usuario['pets'];
  print(pets2);

  //Hay que tener cuidado al usar Dynamic
}
