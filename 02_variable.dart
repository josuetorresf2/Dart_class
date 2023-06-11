void main() {
  //mejor usar final si no se cambian adelante
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  // bool? isAlive;  puede ser null bc ? = null
  final abilities = [
    'impostor'
  ]; //List <String> abilities, dart infiere esto si no es declarado por developer
  // final abilities = <String>['impostor']; o final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  //dynamic == null es decir acepta null
  dynamic errorMessage = 'Hola';
  errorMessage =
      true; //por lo que es dinamico le podemos poner valor de un bool
  errorMessage = [1, 2, 3, 4]; //de un listado
  errorMessage = {1, 2, 3, 4}; //de un set de datos
  errorMessage = () => true; //de una funcion que regresa valor bool
  errorMessage = null; //de un null
  //por esto hay que evirt o saber usar dynamic
  //ejemplo
  //errorMessage += 1; == error

  print("""
  $pokemon
  $hp 
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
