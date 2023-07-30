
import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  late Color _seedColor;
  Color get seedColor => _seedColor;

  set seedColor(value) {
    _seedColor = value;
    notifyListeners();
  }

  AppThemeProvider({required Color defaultColor}) {
    _seedColor = Color.lerp(defaultColor, Colors.black, 0.1) ?? defaultColor;
  }

  void updateTheme(Color currentColor) {
    seedColor = currentColor;
  }

}
