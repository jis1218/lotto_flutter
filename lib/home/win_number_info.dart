import 'package:flutter/material.dart';

class WinNumberInfo extends StatelessWidget {
  const WinNumberInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: 500,
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    OutlinedButton(onPressed: (){}, child: const Text('QR 당첨확인')),
                    OutlinedButton(onPressed: (){}, child: const Text('1등 판매점')),
                  ],
                ),
                Row(
                  children: [
                    OutlinedButton(onPressed: (){}, child: const Text('당첨번호 분석')),
                    OutlinedButton(onPressed: (){}, child: const Text('기타')),
                  ],
                )
              ],
            ),
          )
        )
    );

  }

}