import 'package:flutter/material.dart';
import 'package:lotto_flutter/store/store.dart';

class WinNumberButton extends StatelessWidget {
  const WinNumberButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('당첨자 5명'),
                Text('당첨금액 4000원')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){}, child: const Text('QR 당첨확인')),
                OutlinedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Store())
                  );
                }, child: const Text('1등 판매점')),
              ],
            ),
            OutlinedButton(onPressed: (){}, child: const Text('나의 당첨 확인'))
          ],
        ),
    );

  }

}