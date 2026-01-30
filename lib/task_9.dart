extension NumListExtensions<E extends num> on List<E> {
  E max() {
    if(isEmpty) {
      print("Cannot find max of an empty list");
    }

    E currentMax = first;

    for(var value in this) {
      if(value > currentMax) {
        currentMax = value;
      }
    }
    return currentMax;
  }

  E min() {
    if(isEmpty) {
      print("Cannot find min of an empty list");
    }
    E currentMin = first;

    for(var value in this) {
      if(value < currentMin) {
        currentMin = value;
      }
    }
    return currentMin;

  }
}

void main() {
  final numbers = [3, 7, 2, 9, 4];

  print("max: ${numbers.max()}"); // 9
  print("min: ${numbers.min()}"); // 2
}
