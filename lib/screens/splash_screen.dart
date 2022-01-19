import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Center(
        child: Image.asset('assets/gift_logo.png', height: 280, width: 246.76)
      ),
    );
  }
}