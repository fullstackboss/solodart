void main() {
  print(operacion(
    valor1: 5,
    valor2: 4,
    tipo: 'division',
  ));
  print(operacionNull(
    valor1: null,
    valor2: 8,
  ));
  print(operacionNullAware(
    valor1: null,
    valor2: null,
  ));
  print(operacionReqNull(
    valor1: null,
    valor2: 25,
  ));
  print(operacionNormalNombre(
    "normal",
    true,
    valor_a: 100,
    valor_b: 230,
  ));
  print(operacionOpcional(
    1000,
    2300,
    true,
  ));
}

//definiendo la funcion con parametros OBLIGATORIOS
double operacion({
  required int valor1,
  required int valor2,
  required String tipo,
}) {
  final double resultado;
  switch (tipo) {
    case 'suma':
      resultado = valor1.toDouble() + valor2.toDouble();
      break;
    case 'multiplicacion':
      resultado = valor1.toDouble() * valor2.toDouble();
      break;
    case 'division':
      resultado = valor1.toDouble() / valor2.toDouble();
      break;
    case 'resta':
      resultado = valor1.toDouble() - valor2.toDouble();
      break;
    default:
      resultado = 0;
  }
  return resultado;
}

//definiendo la funcion con parametros podrian ser nulos => Se evitan con IF
int operacionNull({
  int? valor1,
  int? valor2,
}) {
  int resultado = 0;
  // el caracter "!" indica que que esos valores NO serán nulos en ese punto del código
  if (valor1 != null && valor2 != null) {
    resultado = valor1 + valor2;
  } else {
    print('No se puede realizar esta operación');
  }
  return resultado;
}

//utilizando NULL-AWARE
int operacionNullAware({
  int? valor1,
  int? valor2,
}) {
  int resultado = 0;
  //Con Null-Aware se asigna el valor por defecto caso de que el dato sea Nullo
  resultado = (valor1 ?? 10) + (valor2 ?? 7);
  return resultado;
}

//utilizando Requerido Nullo
int operacionReqNull({
  required int? valor1,
  int? valor2,
}) {
  int resultado = 0;
  //Con Null-Aware se asigna el valor por defecto caso de que el dato sea Nullo
  resultado = (valor1 ?? 10) + (valor2 ?? 7);
  return resultado;
}

//Utilizando parametros NORMALES y parametros de NOMBRE
//Respetar el orden
int operacionNormalNombre(
  //parametro NORMAL
  String state,
  bool activo,
  //parametro POR NOMBRE separado por {}
  {
  int? valor_a,
  int? valor_b,
}) {
  int resultado = valor_a! + valor_b!;
  return resultado;
}

//Utilizando parametro OPCIONAL
int operacionOpcional(
  int valor_a,
  int valor_b,
  //parametro OPCIONAL que se encuentra en []
  //Respetar el orden
  [
  bool state = false,
]) {
  int resultado = valor_a + valor_b;
  return resultado;
}
