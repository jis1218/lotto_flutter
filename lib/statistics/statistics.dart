import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lotto_flutter/statistics/statistics_menu.dart';

import 'package:http/http.dart' as http;

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _Statistics();
}

class _Statistics extends State<Statistics> {
  List<StatisticsMenu> _statisticsMenu = [];

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
            itemCount: _statisticsMenu.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_statisticsMenu[index].menuName),
              );
            },
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
      final response =
          await http.get(Uri.parse('http://localhost:8000/statistics_menu'));

      final responseBody = utf8.decode(response.bodyBytes);

      setState(() {
        _statisticsMenu = convertResponseToList(responseBody);
      });
    } catch (error) {
      print('Error : $error');
    }
  }
}
