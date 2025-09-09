void main(){
int intValue = 10;
double doubleValue = 1.44;
String strValue = "Dani";
bool boolValue = true;

double muvelet1 = intValue + doubleValue;
double muvelet2 = intValue - doubleValue;
double muvelet3 = intValue * doubleValue;
double muvelet4 = intValue / doubleValue;
double muvelet5 = intValue % doubleValue;

//osszeg
print("osszeg: ${muvelet1}");

//kulonbseg
print("kulonbseg: ${muvelet2}");

//szorzat
print("szorzat: ${muvelet3}");

//hanyados
print("hanyados: ${muvelet4}");

//maradek
print("maradek: ${muvelet5}");

bool boolResult = !boolValue;
print(boolResult);
}
