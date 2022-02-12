import 'package:flutter/material.dart';

class DarkModeProvider with ChangeNotifier {
  /// 深色模式 0: 关闭 1: 开启 2: 随系统
  DarkMode _darkMode = DarkMode.auto;

  DarkMode get darkMode => _darkMode;

  void changeMode(DarkMode darkMode) async {
    _darkMode = darkMode;
    notifyListeners();
  }
}

enum DarkMode { close, open, auto }
