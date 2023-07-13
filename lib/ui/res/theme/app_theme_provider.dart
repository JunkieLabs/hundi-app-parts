
import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  // ThemeData _currentTheme;

  late Color _seedColor;
  Color get seedColor => _seedColor;

  set seedColor(value) {
    _seedColor = value;

    notifyListeners();
  }

  AppThemeProvider({required Color defaultColor}) {
    _seedColor = Color.lerp(defaultColor, Colors.black, 0.1) ?? defaultColor;
    // _currentTheme = ThemeDat.light()
  }

  // ThemeData get currentTheme => _currentTheme;

  // set currentTheme(value) {
  //   _currentTheme = value;

  //   notifyListeners();
  // }
}
