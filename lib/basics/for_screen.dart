import 'package:flutter/material.dart';

class ForScreen extends StatefulWidget {
  const ForScreen({super.key});

  @override
  State<ForScreen> createState() => _ForScreen();
}

class _ForScreen extends State<ForScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For 반복문 확인하기'),
        backgroundColor: Colors.yellow,
        // 돌아가기 아이콘 추가
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('반복문 화면')
          ],
        ),

      ),
    );
  }
}
