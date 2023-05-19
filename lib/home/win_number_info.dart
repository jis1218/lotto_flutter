import 'package:flutter/material.dart';

class WinNumberInfo extends StatelessWidget {
  const WinNumberInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('당첨자 5명'),
              Text('당첨금액 4000원')
            ],
          )
        ],
      ),
    );
  }

}