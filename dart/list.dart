void main() {
    //1. feladat
    /*
    List<int> fixedList = List<int>.filled(10, 0);
    for(int i = 0; i < fixedList.length; i++){
        if((i) % 2 == 1){
            fixedList[i] = 1;
        }
    }
    print(fixedList);
    */

    //2.feladat
    /*
    List<int> fixedList = [];
    for(int i = 0; i < 10; i++){
        if((i+1) % 2 == 1){
            fixedList.add(1);
        } else {
            fixedList.add(0);
        }
    }
    print(fixedList);
    */
    //3. feladat

    List<int> fibo = [];
    int a = 0;
    int b = 1;
    int c = a + b;
    fibo.addAll([a, b]);
    while(c < 30) {
        a = b;
        b = c;
        fibo.add(c);
        c = a + b;
    };
    print(fibo);

    //4. feladat

    print(fibo.length);
    print(fibo.last);
    print(fibo.indexOf(8));
    print(fibo.reversed);
    print(fibo.isEmpty);
}