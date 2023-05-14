import 'dart:convert';

class StoreData {
  final int round;
  final String storeName;
  final String address;
  final String selectType;
  final int firstLotterySum;
  final int secondLotterySum;
  final bool active;

  StoreData({
    required this.round,
    required this.storeName,
    required this.address,
    required this.selectType,
    required this.firstLotterySum,
    required this.secondLotterySum,
    required this.active,
  });
}

// Assuming the response string is stored in a variable called 'responseString'
List<StoreData> convertResponseToList(String responseString) {
  print(responseString.runtimeType);
  print(jsonDecode(responseString).runtimeType);
  print(jsonDecode(jsonDecode(responseString)).runtimeType);
  List list = jsonDecode(jsonDecode(responseString));

  List<StoreData> result = list.map((element) =>
      StoreData(
        round: element['round'],
        storeName: element['store_name'],
        address: element['address'],
        selectType: element['select_type'],
        firstLotterySum: element['first_lottery_sum'] ?? 0.toString(),
        secondLotterySum: element['second_lottery_sum'] ?? 0,
        active: element['active'],
      )).toList();

  return result;
}
