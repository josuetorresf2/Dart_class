void main() {
  final Hero wolvering =
      new Hero(name: 'Loggan'); //se crea instancia de la clase
  // o se puede dejar como final wolvering = new Hero('','');
  print(wolvering);
  print(wolvering.name);
  print(wolvering.power);
}

class Hero {
  //dos prioridades
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin Poder'});

  @override //no es obligatorio pero es buen practica
  String toString() {
    return '$name - $power';
  }
}
