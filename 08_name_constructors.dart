void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  /*
  final ironman = Hero(
      isAlive: rawJson['isAlive2'] ?? false,
      power: 'Money',
      name: 'Tony Stark'
  );
  */
  final ironman = Hero.fromJson(rawJson);

  //final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  //Constructor
  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive =
            json['isAlive'] ?? 'No isAlive found'; //nosotros creamos .fromJson

  @override
  String toString() {
    return '$name, $power, is Alive: ${isAlive ? 'YES!' : 'NOPE!'}'; // isAlive? es un ternario
  }
}
