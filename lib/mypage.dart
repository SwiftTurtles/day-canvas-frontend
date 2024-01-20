// mypage.dart

// import 'top_appbar.dart';
import 'package:daycanvas_front/body_appbar.dart';
import 'package:daycanvas_front/bottom_appbar.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: 'MyPage'),
      body: CustomBodyAppBar(
        child: Center(child: Text('this is My Page')),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
