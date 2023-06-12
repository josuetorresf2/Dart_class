void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print(value);
  } catch (err) {
    print('Tenermos un error: $err');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(
      seconds: 1)); //esperate este segundo y de ahi regresa el return
  throw 'Error en la peticion';
  // return 'Tenemos valor de peticion';
}

//await solo funciona con funciones async (asyncronas)