extension SecondMostUsedCharExtension on String {
  String get useMaxSecond {

    if(isEmpty) return "";

    final frequency = <String, int>{};

    for(final char in split('')){
      frequency[char] = (frequency[char] ?? 0) + 1;
    }

    final sortedEntries = frequency.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

    if(sortedEntries.length < 2) return "";

    for (final e in sortedEntries.take(10)) {
      print("'${e.key}' -> ${e.value}");
    }

    return sortedEntries[1].key;
  }
}




void main() {
  final text =
      "oq choynakka ko'k qopqoq, ko'k choynakka op qopqoq";

  print(text.useMaxSecond);
}
