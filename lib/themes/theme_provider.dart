import 'package:flutter/material.dart';
import 'package:habit_tracker/themes/dark_mode.dart';
import 'package:habit_tracker/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // intially light mode
  ThemeData _themeData = lightMode;

  // get current theme
  ThemeData get themeData => _themeData;

  // is current there dark mode?
  bool get isDarkMode => _themeData == darkMode;

  // set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
