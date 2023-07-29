import 'package:flutter/widgets.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_display.dart';
import 'package:hundi_flutter_parts/ui/res/values/colors.dart';

class JlThemeHelper {
  static AppThemeDisplay prepareThemeMedia(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return AppThemeDisplay(height: height, isSamllHeight: height < 630);
  }

  static Color colorBlend(Color background, Color foregroundColor,
      JlColorEmphasize foregroundEmphasize) {


    return Color.alphaBlend(
        foregroundColor.withOpacity(JlColors.alpha(foregroundEmphasize)),
        background);
  }

  static Color colorPrimary(
    Color background,
    Color seedColor,
  ) {


    return Color.alphaBlend(
        seedColor.withOpacity(JlColors.alpha(JlColorEmphasize.high)),
        background);
  }
}

enum ThemeColorType { primary, secondary, surface, onSurface, background }
