import 'dart:io';

void main() {
    int number = 0;
    do {
        print("Adjon meg egy szamot 9 es 3 kozott!");
        number = int.parse(stdin.readLineSync()!);
    } while (number >= 9 || number <= 3);
    
    int i = 0;
    int j = 0;
    while(i != number) {
        i++;
        print("i: ${i}");

        while(j != number) {
            j++;
            print("j: ${j}");
            
        }

    }
    
}