// Feladat:
// 1. Adott a List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14, 15, 17, 19, 21];
// Hozd létre a fizzBuzzNumbers listát. mely a 3-mal vagy az 5-tel osztható számokat tartalmazza.

// 2. Adott a List<String> days = [ "Sunday",
// "Monday",
// "Tuesday",
// "Wednesday",
// "Thursday",
// "Friday",
// "Saturday"
// ];
// Hozd létre a myDays listát, mely a days azon elemeit tartalmazza, amelyben benne van az "o" betű vagy az 'ur".
// Írasd ki a myDays-et!

// 3. Adott a Set<dynamic> scores = {"A", "B", 3, 5, 4, "D", "F", 2, 1, "E", "C"};
// Hozd léte a numberMarks listát, mely a scores közül csak a számokat tartalmazza:
// A listát írasd ki növekvő sorrendben!

// 4. Adott a

// Map<String, double> gdpPerPerson = {
// "United States": 63051.40,
// "China": 10500.00,
// "Japan": 42659.70,
// "Germany": 46703.00,
// "United Kingdom": 42330.00,
// "India": 2100.00,
// "France": 41463.64,
// "Canada": 46212.10
// };

// Írsd ki a top 3 GDP-vel rendelkező értékeket!
void main() {
  //1 feladat
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14, 15, 17, 19, 21];
  List<int> fizzBuzzNumbers =
      numbers.where((x) => x % 3 == 0 || x % 5 == 0).toList();
  print(fizzBuzzNumbers);

  //2 feladat
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];
  List<String> myDays =
      days.where((x) => x.contains("o") || x.contains("ur")).toList();
  print(myDays);

  //3 feladat
  Set<dynamic> scores = {"A", "B", 3, 5, 4, "D", "F", 2, 1, "E", "C"};
  List<int> numberMarks;

  //4 feladat
  Map<String, double> gdpPerPerson = {
    "United States": 63051.40,
    "China": 10500.00,
    "Japan": 42659.70,
    "Germany": 46703.00,
    "United Kingdom": 42330.00,
    "India": 2100.00,
    "France": 41463.64,
    "Canada": 46212.10
  };

  List<String> top3;
}
