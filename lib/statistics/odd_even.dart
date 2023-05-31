import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'odd_even_data.dart';


class OddEven extends StatefulWidget {
  const OddEven({super.key});

  @override
  State<OddEven> createState() {
    return _OddEven();
  }
}

class _OddEven extends State<OddEven> {

  List<OddEvenData> _oddEven = [];

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

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response =
      await http.get(Uri.parse('http://localhost:8000/odd_and_even'));

      final responseBody = utf8.decode(response.bodyBytes);

      setState(() {
        _oddEven = convertResponseToList(responseBody);
      });
    } catch (error) {
      print('Error : $error');
    }
  }

}