void main() {
    int a = 0;
    int b = 1;
    int c = a + b;

    print(a);

    while(c <= 100){
        print(c);
        c = a + b;;
        a=b;
        b=c; 
    }
}