void main() {
    print(reverseString("Hello"));
    print(reverseInteger(123));
    print(reverseNumber(123.123123));
    print(sortNumberAsc(6378221));
    print(sortNumberDes(63.78221));
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