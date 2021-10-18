import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // for (String arg in args) {
  //   print(arg);
  //   playRockPaperScissorsGameWithComputer(arg.toLowerCase());
  //   print('');
  // }
  // print('');
  runAppWithInput();
}

enum rockPaperScissorsGameOutput { tie, lose, win }

rockPaperScissorsGameOutput playRockPaperScissorsGame(
    String player1, String player2) {
  if (player1[0] == player2[0]) {
    print('Tie');
    return rockPaperScissorsGameOutput.tie;
  } else if (
      player1.startsWith('r') && player2 == 'scissors' ||
      player1.startsWith('p') && player2 == 'rock' ||
      player1.startsWith('s') && player2 == 'paper'
    ) {
    print('You win');
    return rockPaperScissorsGameOutput.win;
  } else if (
      player1.startsWith('r') && player2 == 'paper' ||
      player1.startsWith('p') && player2 == 'scissors' ||
      player1.startsWith('s') && player2 == 'rock'
    ) {
    print('You lose');
    return rockPaperScissorsGameOutput.lose;
  } else {
    print('Invalid input');
    return rockPaperScissorsGameOutput.lose;
  }
}

void runAppWithInput() {
  var score = 0;
  while (true) {
    stdout
        .write('Enter your choice :q to quit, should start with r, p or c: > ');
    var input = stdin.readLineSync();
    input = input?.toLowerCase();
    if (input == '') {
      print('You did not type anything');
      break;
    }
    if (input == ':q') {
      break;
    }
    // if (input?.startsWithr') && !input?.startsWith('p') && !input?.startsWith('c')) {
    //   print('Invalid input');
    //   break;
    // }
    var win = playRockPaperScissorsGameWithComputer(input as String);
    if (win == rockPaperScissorsGameOutput.lose) {
      break;
    } else if (win == rockPaperScissorsGameOutput.tie) {
      continue;
    } else {
      score++;
    }
  }
  print('You scored $score');
}

rockPaperScissorsGameOutput playRockPaperScissorsGameWithComputer(
    String player) {
  const option = ['rock', 'paper', 'scissors'];
  String random = option[Random().nextInt(option.length)];
  return playRockPaperScissorsGame(player, random);
}
