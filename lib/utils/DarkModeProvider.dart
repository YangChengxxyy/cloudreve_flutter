import 'package:flutter/material.dart';

class DarkModeProvider with ChangeNotifier {
  DarkMode _darkMode = DarkMode.auto;

  DarkMode get darkMode => _darkMode;

  void changeMode(DarkMode darkMode) async {
    _darkMode = darkMode;
    notifyListeners();
  }
}

enum DarkMode { close, open, auto }
