import 'dart:convert';

class StatisticsMenu {
  final String menuName;
  final int order;

  StatisticsMenu({
    required this.menuName,
    required this.order,
  });
}

List<StatisticsMenu> convertResponseToList(String responseString) {
  print(responseString.runtimeType);
  print(jsonDecode(responseString).runtimeType);
  print(jsonDecode(jsonDecode(responseString)).runtimeType);
  print(responseString);
  List list = jsonDecode(jsonDecode(responseString));
  print(list);

  List<StatisticsMenu> result = list
      .map((element) => StatisticsMenu(
      menuName: element['menu_name'], order: element['order']))
      .toList();

  return result;
}
