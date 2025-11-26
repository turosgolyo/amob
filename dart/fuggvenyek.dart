void main() {
    print(reverseString("Hello"));
    print(reverseInteger(123));
    print(reverseNumber(123.123123));
    print(sortNumberAsc(6378221));
    print(sortNumberDes(63.78221));
    print(fizzBuzz(10));
    print(fizzBuzz(15));
    print(fizzBuzz(6));
    print(isTriangleBySides(6, 6, 1));
    print(isTriangleByAngles(59.5, 60.5, 60));
}

String reverseString(String szoveg) => szoveg.split('').reversed.join();

int reverseInteger(int szam) => int.parse(szam.toString().split('').reversed.join());

num reverseNumber(num szam) => num.parse(szam.toString().split('').reversed.join());

int sortNumberAsc(int szam) {
    List<String> strSzamok = szam.toString().split('');
    List<int> intSzamok = strSzamok.map((i) => int.parse(i)).toList();
    intSzamok.sort((a, b) => a - b);
    strSzamok = intSzamok.map((item) => '$item').toList();
    return int.parse(strSzamok.join());
}

num sortNumberDes(num szam) {
    List<String> strSzamok = szam.toString().replaceAll('.', '').split('');
    List<int> intSzamok = strSzamok.map((i) => int.parse(i)).toList();
    intSzamok.sort((a, b) => b - a);
    strSzamok = intSzamok.map((item) => '$item').toList();
    return int.parse(strSzamok.join());
}

String fizzBuzz(int szam){
    String result = '';
    // if(szam % 3 == 0 && szam % 5 == 0){
    //     result = "FizzBuzz";
    // } else if (szam % 3 == 0){
    //     result = "Fizz";
    // } else if (szam % 5 == 0){
    //     result = "Buzz";
    // }

    if(szam % 3 == 0){
        result = "Fizz";;
    } 
    if(szam % 5 == 0){
        result += "Buzz";
    }
    return result;
}

bool isTriangleBySides(double a, double b, double c){
    if(a + b > c && a + c > b && c + b > a){
        return true;
    }
    return false;
}

bool isTriangleByAngles(double a, double b, double c){
    if(a+b+c == 180 && a > 0 && b > 0 && c > 0){
        return true;
    }
    return false;
}

String triangleTypeByAngles(double a, double b, double c){
    if(!isTriangleByAngles(a, b, c)){
        return 'evenytelen haromszog'
    }
    String result = '';
    if(a == b && a != c || b == c &&  b != a || c == a && c != b){
        return 'egyenlo szaru';
    } 
    if (a == 60 && b == 60 && c == 60){
        return 'egyenlo haromszog';
    }
    if (a == 90 || b == 90 || c == 90){
        return 'derekszogu haromszog';
    }
    if (a > 90 || b > 90 || c > 90){
        return 'tompaszogu haromszog';
    }
    if (a < 90 && b < 90 && c < 90){
        return hegyesszogu haromszog
    }
    return 'altalanos haromszog'
}

int padovanNumber(int sorszam){
    int p1 = 0;
    int p2 = 1;
    int p3 = 1;
    int number

    for(int i = 4; i > sorszam; i++){
        
    }
}