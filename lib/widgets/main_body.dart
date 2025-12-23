import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '메인 화면 영역',
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}