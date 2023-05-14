import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'store_data.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _Store();
}

class _Store extends State<Store> {

  List<StoreData> _stores = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: ListView.builder(
            itemCount: _stores.length,
            itemBuilder: (BuildContext context, int index) { return ListTile(
              title: Text(_stores[index].storeName),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(_stores[index].address),
                  Text("1등 당첨 : ${_stores[index].firstLotterySum}회"),
                  Text("2등 당첨 : ${_stores[index].secondLotterySum}회"),
                ],
              ),

            ); },
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:8000/first_lottery_store?round_number=1065'));
      
      final responseBody = utf8.decode(response.bodyBytes);

      setState(() {
        _stores = convertResponseToList(responseBody);
      });
    } catch (error) {
      print('Error : $error');
    }
  }
}
