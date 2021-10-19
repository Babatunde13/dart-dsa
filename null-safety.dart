void main(List<String> args) {
  const person = {'name': 'Andrea'};
  if (person['age'] == null) {
    print('Age is null');
  }
  // int x = null; raises an error
  int? a = null;
  print(a);
  final b = 3;
  // print(a + b); raises an error
  if (a == null) {
    print('a is null');
  } else {
    print(a + b);
  }
  assert(a == null);
  print(b);

  const x = 42;
  int? maybeValue;
  // if (x == 0) {
  //   maybeValue = x;
  // }
  maybeValue = x > 0 ? x : null;
  int value = maybeValue ?? 0; // maybeValue == null ? maybeValue : 0
  print(value);
  value ??= 0;
  var arr;
  arr?[0];
  late final int y;
  y = 0;
}
