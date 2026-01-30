extension PhoneFormatExtension on String {
  String get contactWithSpace {
    if(length != 13) return this;

    final countryCode = substring(0, 4);
    final operatorCode = substring(4, 6);
    final prefix = substring(6, 9);
    final part1 = substring(9, 11);
    final part2 = substring(11 , 13);

    return "$countryCode $operatorCode $prefix $part1 $part2";
  }
}


void main() {
  print("+998787774747".contactWithSpace);
  // +998 78 777 47 47

  print("+998901234567".contactWithSpace);


  print("12345".contactWithSpace);

}


