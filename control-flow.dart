void main(List<String> args) {
  Medal medal = Medal.gold;
  switch (medal) {
    case Medal.gold:
      print('Gold 🥇');
      break;
    case Medal.silver:
      print('Silver 🥈');
      break;
    case Medal.bronze:
      print('Bronze 🥉');
      break;
    default:
      print('Uou do not have any medal ');
      print(medal.index);
    
  }
  for (var i = 0; i < 2; i++) {
    print(i);
  }
  print(args);
  condition(10);
  var i = 2;
  while (i < 3) {
    print(i);
    i++;
  }
  calculator(1, 3, Operations.plus);
}

void condition(int age) {
  if (age < 16) {
    print('Junior ticket');
    print('Price is \$8');
  } else if (age >= 60) {
    print('Senior ticket');
    print('Price is \$6');
  } else {
    print('Regular ticket');
    print('Price is \$10');
  }

  print('Enjoy your visit');
}

enum Medal { gold, silver, bronze, noMedal }
enum dayOfTheWeekv{
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}


enum Operations {
  plus,
  multiply,
  divide,
  minus
}
// switch
// break
// continue

void calculator(int num1, int num2, Operations operation) {
  switch (operation ) {
    case Operations.plus:
      print(num1 + num2);
      break;
    case Operations.minus:
      print(num1 - num2);
      break;
    case Operations.multiply:
      print(num1 * num2);
      break;
    case Operations.divide:
      print(num1 / num2);
      break;
    default:
      print('Invalid operation');
  }
}
