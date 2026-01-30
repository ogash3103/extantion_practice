extension RelCodec on String {
  String encode() {
    if(isEmpty) return '';

    final buffer = StringBuffer();
    int count = 1;


    for(int i = 1; i < length; i++){
      final prev = this[i - 1];
      final curr = this[i];

      if(curr == prev) {
        count++;
      } else {
        buffer.write("$count$prev");
        count = 1;
      }
    }
    buffer.write('$count${this[length - 1]}');

    return buffer.toString();
  }

  String decode() {

    if(isEmpty) return '';

    final buffer = StringBuffer();
     int count = 0;

     for(int i = 0; i < length; i++) {
       final ch = this[i];

       final isDigit = ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57;


       if(isDigit) {
         count = count * 10 + (ch.codeUnitAt(0) - 48);
       } else {
         for(int k = 0; k < count; k++){
           buffer.write(ch);
         }
         count = 0;
       }
     }
      return buffer.toString();
  }
}

void main() {
  final s1 = "aaabbc";
  final enc1 = s1.encode();
  final dec1 = enc1.decode();

  print(s1);
  print(enc1);
  print(dec1);

  final s2 = "thequickbrownfoxjumpsoverthelazydog";
  final enc2 = s2.encode();
  final dec2 = enc2.decode();

  print(enc2);
  print(dec2 == s2);

  print("12a3b".decode());
}
