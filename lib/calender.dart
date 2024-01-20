// calender.dart

// import 'top_appbar.dart';
import 'package:daycanvas_front/body_appbar.dart';
import 'package:daycanvas_front/bottom_appbar.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: 'DayCanvas'),
      body: CustomBodyAppBar(
        child: Center(child: Text('Calender Page')),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
