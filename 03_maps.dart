void main() {
  //mapa = pares de valores
  /*
   En ejemplos los podemos encontrar como
   final pokemon = {};
  */
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

/*EX :
  final pokemons = {
    1: 'ABC',
    2: 'XYZ', 
    3: '123', 
    150: 'AGHJ'
  };
*/
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
