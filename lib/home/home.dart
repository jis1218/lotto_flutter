import 'package:flutter/material.dart';
import 'package:lotto_flutter/home/win_number.dart';
import 'package:lotto_flutter/home/win_number_button.dart';
import 'package:lotto_flutter/home/win_number_info.dart';
import 'package:lotto_flutter/statistics/statistics.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.flag)),
            Tab(icon: Icon(Icons.abc_sharp)),
            Tab(icon: Icon(Icons.dashboard)),
          ]),
        ),
        body: TabBarView(
          children: [
            SizedBox(
              child: Column(
                children: const [
                  Expanded(flex: 3, child: WinNumber()),
                  Expanded(flex: 1, child: WinNumberInfo()),
                  Expanded(flex: 6, child: WinNumberButton())
                ],
              ),
            ),
            const Center(
              child: Text('Hello'),
            ),
            SizedBox(
              child: Column(
                children: const [
                  Expanded(flex: 10, child: Statistics())
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
