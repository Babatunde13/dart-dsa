import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  for (String arg in args) {
    print(arg);
    runApp(arg.toLowerCase());
    print('');
  }
  print('');
  runAppWithInput();
}

enum Output { tie, lose, win }

Output runApp(String arg) {
  arg = arg.toLowerCase();
  const option = ['rock', 'paper', 'scissors'];
  String random = option[Random().nextInt(option.length)];
  if (arg[0] == random[0]) {
    print('Tie');
    return Output.tie;
  } else if (arg.startsWith('r') && random == 'scissors') {
    print('You win');
    return Output.win;
  } else if (arg.startsWith('r') && random == 'paper') {
    print('You lose');
    return Output.lose;
  } else if (arg.startsWith('p') && random == 'rock') {
    print('You win');
    return Output.win;
  } else if (arg.startsWith('p') && random == 'scissors') {
    print('You lose');
    return Output.lose;
  } else if (arg.startsWith('s') && random == 'paper') {
    print('You win');
    return Output.win;
  } else if (arg.startsWith('s') && random == 'rock') {
    print('You lose');
    return Output.win;
  } else {
    print('Invalid input');
    return Output.lose;
  }
}

void runAppWithInput() {
  var score = 0;
  while (true) {
    stdout.write('Enter your choice, should start with r, p or c: > ');
    var input = stdin.readLineSync();
    var win = runApp(input as String);
    print(win);
    if (win == Output.lose) {
      break;
    } else if (win == Output.tie) {
      continue;
    } else {
      score++;
    }
  }
  print('You scored $score');
}
