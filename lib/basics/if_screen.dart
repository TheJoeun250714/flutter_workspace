import 'package:flutter/material.dart';
import 'package:flutter_workspace/widgets/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

class IfScreen extends StatelessWidget {
  const IfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // 개발자가 만들어낸 상단바가 아니라 구글 플러터 개발자가 만들어낸 상단바
      // 각 상단바에는 title을 이용해서 어떤 페이지인지 표기 가능
      appBar: AppBar(
        title: const Text("if문 예제"),
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('점수 : ',style: const TextStyle(fontSize: 24)),
            ElevatedButton(onPressed: () => context.go('/'), child: const Text("등급확인"))
          ],
        ),
      ),
    );
  }
}