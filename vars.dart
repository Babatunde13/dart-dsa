void main() {
  String name = 'Andrea';
  int num = 1;
  double height = 1.84;
  bool likesDart = true;
  print(name);
  print(num);
  print(height);
  print(likesDart);
  vars();
  exercise1(12.8, 10, 'pizza', 'pasta');
  print(r'C:\wINDOWS\\APP\HELLO');
  print("""This is a short sentence
This is a longer sentence""");
  stringOperations(' hello Hell heyy  ');
  numericOperations();
  tempConverter(90);
  conditional();
}

// types
// 1. int
// 2. double
// 3. string
// 4. bool

void vars() {
  String firstName = 'Babatunde';
  String lastName = 'Koiki';
  double height = 1.84;
  int age = 20;
  print(firstName);
  print(lastName);
  print(height);
  print(age);
  print(
      'My name is ${firstName} ${lastName}, I am ${age} years old. and I am ${height}m tall');
  print('Next year, I will be ${age + 1} years old');
}

void exercise1(double temperature, int value, String pizza, String pasta) {
  print('The temperature is ${temperature}');
  print('${value} plus ${value}  makes ${value + value}');
}

// string operations
void stringOperations(String data) {
  print(data.toLowerCase());
  print(data.toUpperCase());
  print(data.trim());
  print(data.length);
  print(data.substring(0, 5));
  data = data.toLowerCase();
  print(data);
  print(data.contains('hello'));
  String newData = data.replaceAll('hel', 'how');
  print(newData);
}

void numericOperations() {
  int x = 10;
  print(5 + 2);
  print(5 / 2);
  x += 1;
  x++;
}
// operator precedence
// 1. ()
// 2. **
// 3. *, /, %
// 4. +, -
// 5. <<, >>
// 6. &

void tempConverter(double fahrenheit) {
  double celsius = (fahrenheit - 32) * 5 / 9;
  print(
      '$fahrenheit degrees Fahrenheit is ${celsius.toStringAsFixed(1)} degrees Celsius');
}

void conditional() {
  print(5 > 2);
  print(5 < 2);
  print(5 > 2 && 1==2);
  print(5 > 2 || 1 == 2);
  String email = 'user@user.com';
  print(email.contains('@'));
  print(email.contains('@') && email.contains('.'));
  print(email.isEmpty);
  int age = 20;
  if (age >= 20 && age <= 60) {
    print('You are old enough to vote');
  } else {
    print('You are not old enough to vote');
  }
  print('You are old enough to vote');
}
