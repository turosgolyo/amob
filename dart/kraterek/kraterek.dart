import 'dart:io';
import 'dart:math';

void main() {
    File file = File('./kraterek/felszin_tpont.txt');
    List<Map<String, Object>> kraterek = [];
    List<String> filetartalom = file.readAsLinesSync();
    for(String sor in filetartalom){
        List<String> adat = sor.trim().split('\t');
        kraterek.add({
            'x': double.tryParse(adat[0])!,
            'y': double.tryParse(adat[1])!,
            'r': double.tryParse(adat[2])!,
            'nev': adat[3],
        });
    }
    
    print(kraterek.toString());

    print('Kraterek hossza: ${kraterek.length}');

    print('Kérem egy kráter nevét: ');
    String nev = stdin.readLineSync()!;
    String kiirando = 'nincs ilyen nevű kráter';
    for(var krater in kraterek){
        if(nev == krater['nev']){
            kiirando = 'A(z) ${krater['nev']} középpontja X=${krater['x']}  Y=${krater['y']}  sugara R=${krater['r']} . ';
            break;
        }
    }
    print(kiirando);

    Map<String, Object> legnagyobb = kraterek[0];
    for(var krater in kraterek){
        if((legnagyobb['r'] as double) < (krater['r'] as double)){
            legnagyobb = krater;
        }
    }
    print('A legnagyob krater neve es sugara: ${legnagyobb['nev']} ${legnagyobb['r']}');

    double tavolsag(double x1, double y1, double x2, double y2) => sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
 
    nev = stdin.readLineSync()!;
}