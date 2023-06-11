// 95% en flutter son puras clases

void main() {
  final Hero wolvering =
      new Hero('Loggan', 'Regeneracion'); //se crea instancia de la clase
  // o se puede dejar como final wolvering = new Hero('','');
  print(wolvering);
  print(wolvering.name);
  print(wolvering.power);
}

class Hero {
  //dos prioridades
  String name;
  String power;

  //constructor
  /*
  Hero(String pName, String pPower) {
    this.name = pName; //this es no necesario
    this.power = pPower;
  }
  

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
  */
  Hero(this.name, this.power);
}
