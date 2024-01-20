//bottom_appbar.dart

import 'package:daycanvas_front/home_page.dart';
import 'package:daycanvas_front/login_Page.dart';
import 'package:daycanvas_front/mypage.dart';
import 'package:daycanvas_front/calender.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.black,
            onPressed: () {
              // 홈 버튼이 눌렸을 때 처리
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.add_circle),
            color: Colors.black,
            onPressed: () {
              // 서랍(드로어) 버튼이 눌렸을 때 처리
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalenderScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: () {
              // 프로필 버튼이 눌렸을 때 처리
              if (isLoggedIn) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPage()));
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }
            },
          ),
        ],
      ),
    );
  }
}
