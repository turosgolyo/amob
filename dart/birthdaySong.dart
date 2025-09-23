import 'dart:io';

void main(){

    int number = 0;
    do{
        print("Adjon meg egy szamot 1 es 100 kozott:");
        number = int.parse(stdin.readLineSync()!);
    } while(number >= 100 || number < 1);
    
    String text = "Happy birthday!\nHappy birthday to you!";

    for(int i = 0; i < number; i++){
        print(text);
    }
}