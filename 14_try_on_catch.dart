void main() async {
  print('Inicio del programa');
  try {
    //trat esto
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print('exito: $value');
  } on Exception catch (err) {
    //se puede agregar catch(err) o no :)
    print('Tenemos una Exception: $err');
  } catch (err) {
    //sino esto
    print('OOP!! algo terrible paso: $err');
  } finally {
    //pero siempre esto
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw new Exception('No hay parametros en el URL');

  //throw 'Error en la peticion';
}
