import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lotto_flutter/home/home.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home()
    );
  }
}
