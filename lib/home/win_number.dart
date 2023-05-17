import 'package:flutter/material.dart';
import 'package:lotto_flutter/util/circle.dart';

class WinNumber extends StatelessWidget {
  const WinNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const Center(
              child: Text('1064회 당첨번호', style: TextStyle(fontSize: 30)),
            ),
            const Center(
              child: Text('2023.04.22', style: TextStyle(fontSize: 30)),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child : Row(
                  mainAxisSize: MainAxisSize.values.first,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCircleAvatar(ballNumber: 1, radius: 30, fontSize: 10),
                    CustomCircleAvatar(ballNumber: 15, radius: 30, fontSize: 10),
                    CustomCircleAvatar(ballNumber: 20, radius: 30, fontSize: 10),
                    CustomCircleAvatar(ballNumber: 30, radius: 30, fontSize: 10),
                    CustomCircleAvatar(ballNumber: 40, radius: 30, fontSize: 10),
                    CustomCircleAvatar(ballNumber: 41, radius: 30, fontSize: 10),
                    const Text('+'),
                    CustomCircleAvatar(ballNumber: 21, radius: 25, fontSize: 10),
                  ],
                )
              )
            ),
          ],
        ),
    );
  }
}
