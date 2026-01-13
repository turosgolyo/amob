import "dart:io";
import "dart:math";

void main() {
  File file = File('felszin_tpont.txt');
  List<Map<String, Object>> kraterek = [];
  List<String> filetartalom = file.readAsLinesSync();
  for (var sor in filetartalom) {
    List<String> adat = sor.trim().split('\t');
    kraterek.add({
      'x': double.tryParse(adat[0])!,
      'y': double.tryParse(adat[1])!,
      'r': double.tryParse(adat[2])!,
      'nev': adat[3],
    });
  }

  //print(kraterek.toString());

  print("2. feladat");
  print("A kráterek száma: ${kraterek.length}");

  print("3. feladat");
  print("Kérem egy kráter nevét: ");
  String nev = stdin.readLineSync()!;
  String kiirando = 'Nincs ilyen nevű kráter.';
  for (var krater in kraterek) {
    if (nev == krater['nev']) {
      kiirando =
          'A(z) ${krater['nev']} középpontja x=${krater['x']} y=${krater['y']} sugarar=${krater['r']}';
      break;
    }
  }
  print(kiirando);

  print("4. feladat");
  Map<String, Object> legnagyobb = kraterek[0];
  for (var krater in kraterek) {
    if ((legnagyobb['r'] as double) < (krater['r'] as double)) {
      legnagyobb == krater;
    }
  }
  print(
    'A legnagyobb kráter neve és sugara: ${legnagyobb['nev']} ${legnagyobb['r']}',
  );

  double tavolsag(double x1, double y1, double x2, double y2) =>
      sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

  print("6. feladat");
  print("Kérem egy kráter nevét: ");
  nev = stdin.readLineSync()!;
  Map<String, Object> megadott = {};
  for (var krater in kraterek) {
    if (nev == krater['nev']) {
      megadott = krater;
      break;
    }
  }
  stdout.write('Nincs közös része!');

  List<String> nemKozos = [];
  for (var krater in kraterek) {
    double x1 = megadott['x'] as double;
    double y1 = megadott['y'] as double;
    double x2 = krater['x'] as double;
    double y2 = krater['y'] as double;

    if (tavolsag(x1, y1, x2, y2) >
        ((megadott['r'] as double) + (krater['r'] as double))) {
      nemKozos.add(krater['nev'] as String);
    }
  }

  print('${nemKozos.join(', ')}.');

  print('7. feladat');
  for (int i = 0; i < kraterek.length; i++) {
    for (int j = i + 1; j < kraterek.length; j++) {
      double x1 = kraterek[i]['x'] as double;
      double y1 = kraterek[i]['y'] as double;
      double x2 = kraterek[j]['x'] as double;
      double y2 = kraterek[j]['y'] as double;

      if (tavolsag(x1, y1, x2, y2) <
          ((kraterek[i]['r'] as double) - (kraterek[j]['r'] as double)).abs()) {
        if ((kraterek[i]['r'] as double) > (kraterek[j]['r'] as double)) {
          print(
            '${kraterek[i]['nev']} tartalmazza a(z) ${kraterek[j]['nev']} krátert.',
          );
        } else {
          print(
            '${kraterek[j]['nev']} tartalmazza a(z) ${kraterek[i]['nev']} krátert.',
          );
        }
      }
    }
  }
}
