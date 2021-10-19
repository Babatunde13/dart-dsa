import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart dp.dart <file.csv>');
    exit(1);
  }
  try {
    final file = new File(args[0]);
    final lines = file.readAsLinesSync();
    var header = lines.first.split(',');
    var data = lines.skip(1).map((line) => line.split(',')).toList();
    print(header);
    print(data);
  } catch (e) {
    print(e);
  }
}
