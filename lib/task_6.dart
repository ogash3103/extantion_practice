extension TemperatureExtension on double {
  double get celsiusToFahrenheit {
    return (this * 9 / 5) + 32;
  }
}

void main() {
  print(0.0.celsiusToFahrenheit);
  print(25.0.celsiusToFahrenheit);
  print(-10.0.celsiusToFahrenheit);
  print(100.0.celsiusToFahrenheit);
}
