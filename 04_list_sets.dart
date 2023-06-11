void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers'); // List []
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed: ${numbers.reversed}'); //ahora parecen en parentesis

  final reverseNumbers = numbers.reversed; //This is a iterable ()
  print('Iterable: $reverseNumbers ');
  print("List Reversed: ${reverseNumbers.toList()}");
  print(
      'Set: ${reverseNumbers.toSet()} '); //Sus valores son unicos en un set {}

  //Elimina duplicados
  print('List original without duplicates ${numbers.toSet().toList()}');

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; // true or false
  });

  print('>5 iterables: $numbersGreaterThan5');
  print('>5 Set: ${numbersGreaterThan5.toSet()}');
}
