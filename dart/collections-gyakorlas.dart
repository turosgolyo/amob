import 'fuggvenyek.dart';

void main() {
  List<int> fizzbuzz = getFizzBuzz();

  print('1. feladat');
  print(fizzbuzz);

  List<String> oddEven = getOddEven(fizzbuzz);

  print('2. feladat');
  print(oddEven);

  Set<int> oddSet = getOddSet(fizzbuzz);

  print('3. feladat');
  print(oddSet);

  Map<int, List<dynamic>> fizzbuzzMap = getFizzBuzzMap()

  print('4. feladat');
  print(fizzbuzzMap);
}

List<int> getFizzBuzz() {
  List<int> result = [];
  for (var i = 1; i <= 100; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      result.add(i);
    }
  }
  return result;
}

List<String> getOddEven(List<int> list) {
  List<String> result = [];

  for (int number in list) {
    if (number % 2 == 0) {
      result.add('even');
    } else {
      result.add('odd');
    }

    //result.add(number.isEven ? 'even' : 'odd');
  }

  return result;
}

Set<int> getOddSet(List<int> list) {
  Set<int> odds = list.where((n) => n.isOdd).toSet();
  return odds;
}

Map<int, List<dynamic>> getFizzBuzzMap(List<int> nums){
  Map<int, List<dynamic>> result = {};

  for(var i = 1; i <= 100; i++){
    if(nums.contains(i)){
    result[i] = [
      i, 
      getFizzBuzzString(i),
      i.isEven ? 'even' : 'odd'
      ];
    } else {
      result[i] = [
      i, 
      i.isEven ? 'even' : 'odd'
      ];
    }

  }

  return result;
}

String getFizzBuzzString(int number){
  String result;

  if(number % 3 == 0 && number % 5 == 0){
    result = 'fizzbuzz';
  } else if (number % 3 == 0){
    result = 'fizz';

  } else {
    result = 'buzz';
  }

  return result;
}