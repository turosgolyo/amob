import 'dart:io';

void main(){
    print("Irjon be egy verset:");
    String falvedo = "Mindenki Igaza Sajátja    SZUBJEKTÍV   IGAZSÁG   Objektív Nincs is az   ";

    print("${falvedo}");
    print("${falvedo.toLowerCase()}");
    print("${falvedo.toUpperCase()}");
    print("${falvedo.trim()}");
    print("${falvedo.replaceAll(" ", "-")}");
    print("${falvedo.substring(4)}");
    print("${falvedo.codeUnitAt(0)}");
    print("${falvedo.codeUnitAt(1)}");
    print("${falvedo.codeUnitAt(2)}");
    print("${falvedo.substring(9)}");
}