// Clases abstractas y enumeraciones (enum)
// molde que me ayuda a crear otros moldes
void main() {
  // esto no funciona
  //final windPlant = EnergyPlant();

  //esto si
  final windPlant = WindPlant(initialEnergy: 100);

  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(windPlant);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

//metodo
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

//esto se crea por si hay mas subclases de la clase :')
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear, water, wind

  EnergyPlant({required this.energyLeft, required this.type});

  //solo defino metodos
  void consumeEnergy(double amount);
}

// extends  para heredar todo lo de mi main class
class WindPlant extends EnergyPlant {
  // asi ya no agregamos otra ves lo que tenemos la clase padre
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//implements
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
