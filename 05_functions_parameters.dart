void main() {
  print(greetEveryone());
  print(greetEveryone2());

  print('Sum ${addTwoNumbers(2, 2)}');

  print('Sum lambda ${addTwoNumbersLambda(10, 30)}');

  print('Sum optional: ${addTwoNumbersOptional(80)}');

  print('Greet: ${greetPerson(name: 'Jaime', message: 'Hey,')}');
}

String greetEveryone() {
  return 'Hello Everyone';
}

String greetEveryone2() => 'Hello 2'; //Funcion de flecha or lambda function\

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLambda(int a, int b) => a + b; //Lambda function

int addTwoNumbersOptional(int a, [int? b]) {
  // o [int b = 5]
  b = b ?? 5; //Confirma si valor tiene numero
  //b ?? = 0;
  return a + b;
}

String greetPerson({required String name, String message = 'Hola, '}) {
  //{} los hace opcionales

  return '$message Fernando';
}
