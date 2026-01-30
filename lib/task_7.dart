extension type Fahrenheit(double value) {
  double get farhenheitToCelsius {
    return (value - 31) * 5 / 9;
  }
}

void main() {
  final f = Fahrenheit(77);

  print(f.farhenheitToCelsius); // 25.0
}
