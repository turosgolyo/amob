void main() {
  Set<String> week = {
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  };

  week.forEach(print);
  print(week.last);
  print(week.isEmpty);
  print(week.length);
  print(week.contains("Wednesday"));

  List<String> days = [
    "workday",
    "weekend",
    "holiday",
    "public holiday",
    "bank holiday",
    "national holiday",
    "religious holiday",
    "federal holiday",
    "school holiday",
    "company holiday",
    "floating holiday",
    "seasonal holiday",
    "observed holiday",
    "half-day",
    "flexible day",
    "personal day",
    "sick day",
    "leave of absence",
    "vacation day",
    "remote workday"
  ];

  week.addAll(days);

  for (String day in week) {
    print(day);
  }

  Set<String> schoolDays = {
    week.elementAt(0),
    week.elementAt(1),
    week.elementAt(2),
    week.elementAt(3),
    week.elementAt(4),
    week.elementAt(7),
    week.elementAt(13)
  };
  print("${week.length} ${schoolDays.length}");

  Set<String> differenceSet = week.difference(schoolDays);
  print(differenceSet);

  for (int i = 0; i <= week.length; i++) {
    if (i == 2 || i == 3 || i == 7 || i == 11 || i == 13) {
      print(week.elementAt(i));
      if (schoolDays.length > i) {
        print(schoolDays.elementAt(i));
      }
    }
  }
}
