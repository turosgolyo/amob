import './collections_data.dart';

void main() {
  print(
    '1. feladat: Olvasd be a vers szöveget és írasd ki a képernyőre a tartalmat!',
  );
  // print(vers);
  
  print('2. feladat: Írasd ki csak a 3. versszakot!');
  List<String> verssorok = vers.split('\n');
  //print(verssorok);
  for(int i = 16; i <= 20; i++){
    print('$i. ${verssorok[i]}');
  }

  print('3. feladat');
  List<String> tanulok = students.split('\n');
  int lastname = 0, firstname = 1;
  for(String sor in tanulok){
    if(sor.contains('Physics')){
        List<String> tanulo = sor.split(';');
        print('${tanulo[lastname]} ${tanulo[firstname]}');
    }
  }
  print(tanulok);

    print('4. feladat')
    String tanulo1 = 'John;Lenon;john@lenon.uk;11C;Art';
    String tanulo2 = 'Joky;Ono;joky@ono.jp;12A;Art';
    students += '\n' + tanulo1;
    students += '\n' + tanulo2;
    print(students);
}