import 'package:flutter/material.dart';
import 'package:lotto_flutter/store/store.dart';

class WinNumberInfo extends StatelessWidget {
  const WinNumberInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  children: [
                    OutlinedButton(onPressed: (){}, child: const Text('QR 당첨확인')),
                    OutlinedButton(onPressed: (){}, child: const Text('1등 판매점')),
                  ],
                ),
              ),
              Row(
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
              Row(
                children: [
                  OutlinedButton(onPressed: (){}, child: const Text('당첨번호 분석')),
                  OutlinedButton(onPressed: (){}, child: const Text('기타')),
                ],
              )
            ],
          ),
        )
    );

  }

}