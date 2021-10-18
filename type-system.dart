void main() {
  var name = 'Andrea';
  // name = 10; raises error
  print(name.toLowerCase());
  final String something = '10'; //  behaves as a constant
  // something = 'hahaha'  raises error
  const n = 1;
  // n = 2; raises error
  dynamic a = 10; // type can change
  a = '10';
}

