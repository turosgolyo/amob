void main() {
  print(faktorial(5));
  print(isDividable(2, 3));
  print(percent(30, 10));
  print(grade(100, -60));
}

int faktorial(int num) {
  int result = 1;
  for (int i = 1; i <= num; i++) {
    result *= i;
  }
  return result;
}

// bool isDividable(int num1, int num2) {
//   if (num1 % num2 == 0) {
//     return true;
//   }
//   return false;
// }

bool isDividable(int num1, int num2) => num1 % num2 == 0;

double percent(int total, int points) => points / total * 100;

String grade(int total, int points) {
  double score = percent(total, points);
  String result = '';

  if (score >= 90) {
    result = "A";
  } else if (score >= 75) {
    result = "B";
  } else if (score >= 60) {
    result = "C";
  } else if (score >= 45) {
    result = "D";
  } else if (score >= 0) {
    result = "E";
  } else {
    result = "Wrong input";
  }

  return result;
}

String vowelUpper(String text) {
  String vowels = "aeiou";
  String result = "";
  List<String> characters = text.split("");

  characters.forEach((character) => {if (vowels.contains(character)) {}});
  return "";
}
