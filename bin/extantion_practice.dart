extension PhoneValidator on String {
 bool get isPhone {
  final value = replaceAll(RegExp(r'\s+'), '');

  final phoneRegex = RegExp(
    r'^(\+?\d{1,3})?[-]?\d{2,3}[-]?\d{3}[-]?\d{2}[-]?\d{2}$',
  );

  return phoneRegex.hasMatch(value);
 }

}

void main(){
  print('+998901234567'.isPhone); // true
  print('998901234567'.isPhone);  // true
  print('90 123 45 67'.isPhone);  // true
  print('90-123-45-67'.isPhone);  // true

  print('abc123'.isPhone);        // false
  print('+99890abc456'.isPhone);  // false
  print('12345'.isPhone);
}