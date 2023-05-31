import 'dart:convert';

class OddEvenData {
  final int round;
  final int oddCount;
  final int evenCount;

  OddEvenData({
    required this.round,
    required this.evenCount,
    required this.oddCount,
  });
}

List<OddEvenData> convertResponseToList(String responseString) {
  print(responseString.runtimeType);
  print(jsonDecode(responseString).runtimeType);
  print(jsonDecode(jsonDecode(responseString)).runtimeType);
  List list = jsonDecode(jsonDecode(responseString));

  List<OddEvenData> result = list.map((element) =>
      OddEvenData(
        round: element['round'],
        oddCount: element['odd'],
        evenCount: element['even']
      )).toList();

  return result;
}