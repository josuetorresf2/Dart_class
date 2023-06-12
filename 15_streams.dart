/*Los streams pueden ser retornados y usados como
objetos, funciones o métodos, son un flujo de 
información que puede estar emitiendo valores
periódicamente, una única vez, o nunca.*/

void main() {
  //
  emitNumbers().listen((value) {
    print('Stream Value: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5); //solo coje 5 de ellos por eso agregamos take(5)
}
