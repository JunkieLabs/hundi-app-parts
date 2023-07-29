import 'package:flutter/widgets.dart';

class JlColors {
  static double alpha(JlColorEmphasize emphasize) {
    switch (emphasize) {
      case JlColorEmphasize.original:
        return 1;

      case JlColorEmphasize.medium:
        return 0.6;

      case JlColorEmphasize.high:
        return 0.85;

      case JlColorEmphasize.lowest:
        return 0.05;
      case JlColorEmphasize.disabled:
        return 0.3;

      default:
        return 0.04;
    }
  }

  static Color invert(Color color) {
    final r = 255 - color.red;
    final g = 255 - color.green;
    final b = 255 - color.blue;

    return Color.fromARGB((color.opacity * 255).round(), r, g, b);
  }
}

enum JlColorEmphasize { lowest, disabled, medium, high, original }
