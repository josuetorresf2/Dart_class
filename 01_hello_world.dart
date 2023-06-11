void main() {
  // var myName = 'Joshue';
  // final myName = 'Joshue'; no deja de cambiarlo por lo que es final
  // pero se puede usar late final myName; y de ahi myName ='Mundo'; es permitido
  //String es mejor que usar var
  String myName = 'Joshue';
  myName = 'Mundo';
  print('Hola $myName');
  print('Hola ${myName.toUpperCase()}');
  //const myName = 'Joshue'; esta variable se asigna a tiempo de construccion.
  //late final es una asignacion tardia, y se asigna a tiempo de ejecucion. n
  print('Hola ${1 + 1}');
  print(2 + 2);
}
