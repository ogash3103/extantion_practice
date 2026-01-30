extension EmailValidationExtension on String {
  bool get isValidEmail {
    if(isEmpty) return false;
    if(contains(' ')) return false;

    final atIndex = indexOf('@');

    if(atIndex == -1) return false;
    if(indexOf('@', atIndex + 1 ) != -1) return false;

    if(atIndex == 0 || atIndex == length - 1) return false;

    final dotIndex = indexOf('.', atIndex);
    if(dotIndex == -1) return false;
    if(dotIndex == length - 1) return false;

    return true;
  }
}

void main() {
  print("test@gmail.com".isValidEmail);        // true
  print("user.name@domain.com".isValidEmail); // true
  print("admin@company.co.uk".isValidEmail);  // true

  print("gmail.com".isValidEmail);     // false
  print("@test.com".isValidEmail);     // false
  print("test@".isValidEmail);         // false
  print("test@gmail".isValidEmail);    // false
  print("test@gmail.".isValidEmail);   // false
  print("test@ gmail.com".isValidEmail); // false
}
