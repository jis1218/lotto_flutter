import 'package:flutter/material.dart';
import 'package:lotto_flutter/statistics/statistics_menu.dart';

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
            itemBuilder: (BuildContext context, int index) {},
          ),
        ));
  }
}
