import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OddEven extends StatefulWidget {
  const OddEven({super.key});

  @override
  State<OddEven> createState() {
    return _OddEven();
  }
}

class _OddEven extends State<OddEven> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OddEven',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),

      ),
    );
  }

}