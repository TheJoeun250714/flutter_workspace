import 'package:flutter/material.dart';
import 'package:flutter_workspace/basics/IntroApp.dart';
import 'package:flutter_workspace/screens/main_screen.dart';
// google 에서 기본으로 제공하는 예쁜 css 테마 사용
// 개발자가 만들어놓았고, 원하는 디자인이 있다면 삭제
// 되도록이면 초반 유지
/*
 * main.dart         = 앱 시작점
 * main_screen.dart  = 메인 화면 조립
 * custom_app_bar    = 상단바
 * main_body         = 본문 내용
 * custom_bottom_nav = 하단메뉴
 * custom_fab        = +버튼
 * custom_drawer     = 사이드 메뉴
 */
void main() {
  // 메인으로 시작할 객체 명칭 선택
  // 1. 앱을 실행하면 이 함수가 제일 먼저 실행
  runApp(CustomIntroApp());
}


class CustomIntroApp extends StatelessWidget {
  const CustomIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: const MainScreen(),
   );
  }
}

