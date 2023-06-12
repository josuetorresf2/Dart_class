void main() {
  emitNumbers().listen((int value) {
    print('Stream Value: $value');
  });
}

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; //ten este valor ahora y ahora en ves de return
  }
}
