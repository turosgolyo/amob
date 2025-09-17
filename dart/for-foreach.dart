import 'dart:io';

void main() {
    print("Adjon meg egy ketjegyu szamot!");
    int number1 = int.parse(stdin.readLineSync()!);
     
    print("Adjon meg egy masik ketjegyu szamot!");
    int number2 = int.parse(stdin.readLineSync()!);

    String oszthatosag;

    if(number1 > number2){
        for(int i = 0; i + number2 <= number1; i++){
            if((number2 + i) % 2 == 0){
                oszthatosag = "paros";
            } else {
                oszthatosag = "paratlan";
            }
            print('${number2 + i} - ${oszthatosag}');
        }
    } else {
        for(int i = 0; i + number1 <= number2; i++){
            if((number2 + i) % 2 == 0){
                oszthatosag = "paros";
            } else {
                oszthatosag = "paratlan";
            }
            print('${number2 + i} - ${oszthatosag}');
        }
    }

    List<String> uefa2024euro = [
        "Spain",
        "Germany",
        "Portugal",
        "France",
        "Netherlands",
        "Turkey",
        "England",
        "Switzerland"
    ];

    uefa2024euro.forEach((x) => print("${uefa2024euro.indexOf(x)} - ${x}"));

    uefa2024euro.forEach((x) => {
        for(int i = 1 + uefa2024euro.indexOf(x); i < uefa2024euro.length; i++){
            print("${x} vs ${uefa2024euro[i]}")
        }
    });

    print("Adjon meg egy szamot: ");
    String temp = stdin.readLineSync()!;
    List<int> numbers = int.parse(temp.split(""));
}