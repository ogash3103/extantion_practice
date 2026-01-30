import 'dart:math';

extension FirstWithDefaultExtension<T> on List<T> {
  T firstWithDefault(T Function() defaultGenerator) {
    if(isNotEmpty) {
      return first;
    } else {
      return defaultGenerator();
    }
  }
}

void main(){

  final numbers = <int>[];
  final value = numbers.firstWithDefault((){
  return Random().nextInt(100);
  });

  print(value);
}