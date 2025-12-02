void main() {
  Map<String, Set<String>> weekMap = {
    "Monday": {"workday", "remote workday", "national holiday"},
    "Tuesday": {"workday", "remote workday", "national holiday"},
    "Wednesday": {"workday", "remote workday", "national holiday"},
    "Thursday": {"workday", "remote workday", "national holiday"},
    "Friday": {"workday", "remote workday", "national holiday"},
    "Saturday": {"workday", "remote workday", "national holiday"},
    "Sunday": {"workday", "remote workday", "national holiday"}
  };

  List<String> keys = weekMap.keys.toList();
  print(keys);
  int len;

  keys.forEach(
      (key) => {len = (weekMap[key] as List).length, print('${key} : ${len}')});
}
