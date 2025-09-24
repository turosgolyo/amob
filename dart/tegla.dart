import 'dart:io';

double terfogat(double a, double b, double c) => a*b*c;
double felulet(double a, double b, double c) => (abTerulet(a, b)+acTerulet(a, c)+bcTerulet(b, c))*2;
double abTerulet(double a, double b) => a*b;
double acTerulet(double a, double c) => a*c;
double bcTerulet(double b, double c) => b*c;

void main() {
    print("Adja meg az a oldal hosszat!");
    double a = double.parse(stdin.readLineSync()!);

    print("Adja meg az b oldal hosszat!");
    double b = double.parse(stdin.readLineSync()!);

    print("Adja meg az c oldal hosszat!");
    double c = double.parse(stdin.readLineSync()!);
    
    print("A tegla terfogata: ${terfogat(a, b, c)}");
    
    print("A tegla felulete: ${felulet(a, b, c)}");
    
    print("A lapok terulete:\nab = ${abTerulet(a, b)}\nac = ${acTerulet(a, c)}\nbc = ${bcTerulet(b, c)}");
}