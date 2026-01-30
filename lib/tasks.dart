extension PangramExtension on String {
  bool get isPangram {
    final Set<String> result = <String>{};
    for(var char in toLowerCase().split('')){
     result.add(char);
    }

    return result.length == 26;
  }
}

void main() {
  print("thequickbrownfoxjumpsoverthelazydog".isPangram);

  print("leetcode".isPangram);
}