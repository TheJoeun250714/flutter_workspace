import 'package:flutter/material.dart';
import 'package:flutter_workspace/widgets/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

class IfScreen extends StatefulWidget {
  const IfScreen({super.key});

  @override
  State<IfScreen> createState() => _IfScreenState();
}

class _IfScreenState extends State<IfScreen> {
  int likeCount = 0;
  // 함수 : 좋아요 버튼을 눌렀을 때 실행

  // 좋아요버튼기능
  // dart 언어에서는 변수명칭이나 함수명칭에 영어 숫자 이외 다른 언어로 작성하는 것은 XXX
  // 반환값없이 기능 실행
  void likeButton() {
    setState(() {
      likeCount = likeCount + 1;
    });
  }
  // resetButton 생성

  void resetButton(){
    setState(() {
      likeCount = 0;
    });
  }




  // react 에서는 return 전에 js     기능 작성했다면
  // dart  에서는 Widget 전에 dart 언어로 기능에 대하여 작성할 수 있다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("if문 예제"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          /* 익명함수 이면서 {} 를 생략할 때는 매개변수 자리와 기능의 자리를 구분하기 위하여 => 사용 */
          onPressed: () => context.go('/'),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 본문 내부에서 제목
            Text(
              '하트를 눌러주세요!!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40), // 클래스 와 클래스 사이의 높이 간격 설정
            Text(
              '$likeCount',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            // IF문을 활용해서 조건에 따라 다른 메세지 표시
            // 나중에 class 나 함수화로 변형하여 재사용 가능하도록 수정 가능
            if (likeCount == 0)
              Text(
                '아직 좋아요가 없어요.😂',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )
            else if (likeCount < 5)
              Text(
                '좋아요를 눌러주셔서 감사합니다.!!!💕',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              )
            else
              Text(
                '인기 폭발! 대박이네요. 🎉',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ElevatedButton(
              // onClick = 마우스로 클릭  onPressed = 손가락으로 화면 누름
              onPressed: likeButton,
              //  스타일이 한가지일 경우에는 style: 묶은 형태로 작성하지 않고 단일로 작성 가능
              //   , child: Icon(Icons.favorite, color: Colors.pink,))
              child: Icon(Icons.favorite, color: Colors.pink),
            ),
            SizedBox(height: 20),
            // 리셋 버튼 생성 grey
            ElevatedButton(
            //  onPressed:/* 함수 이름을 작성하지 않은 익명 함수로 기능 사용 */ () /*dart 언어에서는 => 함수가 무의미하여 사용 하지 않고 오직 매개변수와 기능들이 작성될 중 괄호만 사용 */ {
              onPressed: resetButton  ,
              child: Text('리셋'),
            ),
          ],
        ),
      ),
    );
  }
}
