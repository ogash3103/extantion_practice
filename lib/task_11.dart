extension type ConsoleList<T>(List<T> value) {
  void console() {
    print(value);
  }
}

void main() {
  final numbers = ConsoleList([1, 2, 3, 4]);
  numbers.console();

  final words = ConsoleList(["a", "b", "c"]);
  words.console();
}
