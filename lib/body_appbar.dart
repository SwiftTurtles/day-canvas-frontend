// body_appbar.dart

import 'package:flutter/material.dart';

class CustomBodyAppBar extends StatelessWidget {
  final Widget child;

  CustomBodyAppBar({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF363062), Color(0xFF818FB4)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
