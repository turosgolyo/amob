import 'dart:io';

void main() {
  File file = File('./fileiras/sample.txt');
  file.writeAsStringSync('');

  file = File('./fileiras/sample.csv');
  file.writeAsStringSync('');

  String suli = "Vasvári Pál, Szeged, Gutenberg u. 11, 6722";
  file = File('school.txt');
  file.writeAsStringSync(suli);

  String en = "Papp Dániel, 13.b";
  file.writeAsStringSync(en, mode: FileMode.append);

  file = File('./fileiras/students.csv');
  print("Adja meg az keresztnevet!");
  String first = stdin.readLineSync() ?? '';
  print("Adja meg az vezeteknevet!");
  String last = stdin.readLineSync() ?? '';
  print("Adja meg a varost!");
  String city = stdin.readLineSync() ?? '';
  file.writeAsStringSync('\n$first, $last, $city', mode: FileMode.append);

  String content = file.readAsStringSync();
  List<String> rows = content.split('\n');
  for (String row in rows) {
    List<String> data = row.split(', ');
    print('${data[2]}, ${data[1]}, ${data[0]}');
  }
}
