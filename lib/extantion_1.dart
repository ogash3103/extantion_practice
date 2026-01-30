class Myclass {
  final String name;
  Myclass(this.name);

  void info() {
    print('My name is $name');
  }
}

extension MyExtention on Myclass {
  void add(int a, int b) {
    print('$a + $b = ${a + b}');
  }
}

extension StringCase on String {
String capitalize() => "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
}

extension StringPadding on String {
  String zeros (int width) => padLeft(width, '0');
}


extension IntPrime on int {
bool get isPrime {
  if(this <= 1) return false;

  for(int i = 2; i < this; i++) {
    if(this % i == 0) return false;
  }
  return true;
}
}
