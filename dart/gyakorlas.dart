void main() {
    print(padovanNumber(12));
}

int padovanNumber(int integer){
    List<int> padovanNumbers = [0, 1, 1];
    if(integer <= padovanNumbers.length){
        return padovanNumbers[integer - 1];
    }
    while(padovanNumbers.length < integer){
        padovanNumbers.add(padovanNumbers[padovanNumbers.length - 2] + padovanNumbers[padovanNumbers.length - 3]);
    }  
    return padovanNumbers.last;
}