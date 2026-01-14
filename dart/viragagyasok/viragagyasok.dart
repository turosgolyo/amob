import 'dart:io';

void main() {

//Olvassa be a felajanlas.txt állomány tartalmát, tárolja el a felajánlások adatait, és
//annak felhasználásával oldja meg a következő feladatokat! 
File file = new File('felajanlas.txt');
List<String> lines = file.readAsLinesSync();
lines.removeAt(0);
List<Map<String, Object>> agyasok = [];
for(var line in lines){
  List<String> data = line.split(' ');
  agyasok.add({
    'elso': int.tryParse(data[0])!,
    'masodik': int.tryParse(data[1])!,
    'szin': data[2]
  });
}

print('2. feladat');
int count = agyasok.length;
print('A felajánlások száma: ${count}');

print('3. feladat');
String sorszamok = '';
for(var agyas in agyasok){
  if((agyas['elso'] as int) > (agyas['masodik'] as int)){
    sorszamok += '${agyasok.indexOf(agyas) + 1} ';
  }
}
print('A bejárat mindkét oldalán ültetők: ${sorszamok.trim()}');
}