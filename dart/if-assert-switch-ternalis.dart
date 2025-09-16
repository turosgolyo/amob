import 'dart:io';

void main() {
    //1. feladat
    print("Adjon meg egy szamot: ");
    int number1 = int.parse(stdin.readLineSync()!);
    if(number1 == 1){
        print("elegtelen");
    } else if (number1 == 2){
        print("elegseges");
    } else if (number1 == 3){
        print("kozepes");
    } else if (number1 == 4){
        print("jo");
    } else if (number1 == 5){
        print("jeles");
    } else {
        print("ervenytelen");
    }

    switch(number1){
        case 1:
        print("elegtelen");
        break;
        case 2:
        print("elegseges");
        break;
        case 3:
        print("kozepes");
        break;
        case 4:
        print("jo");
        break;
        case 5:
        print("jeles");
        break;
        default:
        print("ervenytelen");
        break;
    }

    //assert(number1 > 0 && number1 < 6, "A szamnak 1 es 5 kozott kell lennie");


    //2. feladat
    print("Adjon meg egy szamot: ");
    int egyikSzam = int.parse(stdin.readLineSync()!);
    print("Adjon meg egy szamot: ");
    int masikSzam = int.parse(stdin.readLineSync()!);

    if(egyikSzam > masikSzam){
        int elteres = egyikSzam - masikSzam;
        print("Nagyobb szam: ${egyikSzam}\nElteres: ${elteres}");

    } else if(masikSzam > egyikSzam) {
        int elteres = masikSzam - egyikSzam;
        print("Nagyobb szam: ${masikSzam}\nElteres: ${elteres}");
    } else {
        print("A szamok egyenloek");
    }

    //3. feladat
    print("Adjon meg egy szamot: ");
    int number3 = int.parse(stdin.readLineSync()!);

    if(number3 % 2 == 1){
        print("Paratlan szam");
    } else {
        print("Paros szam");
    }
}