import 'package:flutter/material.dart';

class LoadingHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 206),
          alignment: Alignment.topCenter,
          // 设置图片为圆形
          child: ClipOval(
            child: Image.asset(
              "assets/logo.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}