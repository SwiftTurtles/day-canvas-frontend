// home_screen.dart

// import 'package:daycanvas/top_appbar.dart'
import 'package:daycanvas_front/body_appbar.dart';
import 'package:daycanvas_front/bottom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: 'DayCanvas'),
      body: CustomBodyAppBar(
        child: Center(child: Text('Main Page')),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
