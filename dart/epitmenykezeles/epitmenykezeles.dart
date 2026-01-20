import 'dart:io';

void main() {
  File file = File("./utca.txt");
  List<String> lines = file.readAsLinesSync();
  lines.removeAt(0);

  File fizetendo = File("fizetendo.txt");

  String fizetendoString = "";

  for (String line in lines) {
    List<String> data = line.split(" ");

    fizetendoString =
        fizetendoString +
        "${data[0]} ${ado(data[3], int.parse(data[4])).toString()}\n";
  }

  fizetendo.writeAsStringSync(fizetendoString);
}

int ado(String adosav, int alapterulet) {
  int ado = 0;
  if (adosav == "A") {
    ado = alapterulet * 800;
  } else if (adosav == "B") {
    ado = alapterulet * 600;
  } else if (adosav == "C") {
    ado = alapterulet * 100;
  }

  if (ado < 10000) {
    ado = 0;
  }

  return ado;
}
