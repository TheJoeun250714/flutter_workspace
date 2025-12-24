import 'package:flutter/material.dart';

class ForScreen extends StatelessWidget {
  const ForScreen({super.key});

  // appbar 이용해서 메인으로 가는 버튼 생성

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('for_screen is working'),
      ),
    );
  }
}