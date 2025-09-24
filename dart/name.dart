import 'dart:io';

String fullName(){
    String lastName = getName("Adja meg a vezeteknevet!");
    String firstName = getName("Adja meg a keresztnevet!");

    return "${firstName} ${lastName}";
}

String getName(String message) {
    print(message);
    String getName = stdin.readLineSync()!;
    return getName;
}

void main() {
    print(fullName());
}