import 'package:flutter/material.dart';
import 'package:flutter_workspace/basics/IntroApp.dart';
import 'package:flutter_workspace/basics/for_screen.dart';
import 'package:flutter_workspace/basics/if_screen.dart';
import 'package:flutter_workspace/screens/main_screen.dart';
import 'package:go_router/go_router.dart';
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

// GoRouter 설정
final GoRouter _router = GoRouter(
  // 기본 메인 주소
  initialLocation: '/',
  routes: [
    GoRoute(
        path: "/",
    builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: "/if",
      builder: (context, state) => const IfScreen(),
    ),
    GoRoute(
      path: "/for",
      builder: (context, state) => const ForScreen(),
    ),
  ]
);

void main() {
  runApp(CustomIntroApp());
}


class CustomIntroApp extends StatelessWidget {
  const CustomIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp.router(
     debugShowCheckedModeBanner: false,
     routerConfig: _router,
     title:'Flutter 기초 문법'
   );
  }
}

