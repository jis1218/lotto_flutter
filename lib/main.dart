import 'package:flutter/material.dart';
import 'package:lotto_flutter/util/circle.dart';

void main() {
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
        body: Row(
          children: [
            Column(
              children: const [Text('hello'), Text('goodbye')],
            ),
            CustomCircleAvatar(
              ballNumber: 1,
              radius: 50,
              fontSize: 50,
            ),
            CustomCircleAvatar(
              ballNumber: 11,
              radius: 50,
              fontSize: 50,
            ),
            CustomCircleAvatar(
              ballNumber: 21,
              radius: 50,
              fontSize: 50,
            ),
            CustomCircleAvatar(
              ballNumber: 31,
              radius: 50,
              fontSize: 50,
            ),
            CustomCircleAvatar(
              ballNumber: 41,
              radius: 50,
              fontSize: 50,
            ),
            CustomCircleAvatar(
              ballNumber: 45,
              radius: 50,
              fontSize: 50,
            ),
            CustomCircleAvatar(
              ballNumber: 25,
              radius: 40,
              fontSize: 50,
            ),
          ],
        ),
      ),
    );
  }
}
