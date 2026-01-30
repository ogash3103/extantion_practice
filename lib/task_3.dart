extension MapReversedExtension<T> on List<T> {
  List<R> mapReversed<R>(R Function(T element) transform) {
    final result = <R>[];

    for(int i = length - 1; i >= 0; i-- ){
      result.add(transform(this[i]));
    }
    return result;
  }
}

void main() {
  final numbers = [1, 2, 3, 4];

  final result = numbers.mapReversed((x) => x * 10);

  print(result);
}
