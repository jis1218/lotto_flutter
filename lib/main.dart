import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lotto_flutter/home/win_number.dart';
import 'package:lotto_flutter/home/win_number_button.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          child: Column(children: const [
            Expanded(flex: 4, child: WinNumber()),
            Expanded(flex: 6, child: WinNumberButton())
          ],)
        ),
      ),
    );
  }
}
