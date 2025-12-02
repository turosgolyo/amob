import 'dart:io';

void main() {
  File file = File('amob/dart/fileolvasas/adatok.txt');
  String contents = file.readAsStringSync();
  print(contents);
  var lines = contents.split('\n');
  var lineCount = 0;
  var words = [];
  for (var line in lines) {
    lineCount = lineCount + 1;
    words.add(line.split(' '));
    print('${line} ${lineCount}. sor');
  }
  print(lines.first);
  print('${lines.last} ${lines.length}. sor');
  print(lines);
  print(words);
}
