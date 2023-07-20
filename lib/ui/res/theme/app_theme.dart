import 'package:flutter/material.dart';
import 'package:hundi_flutter_parts/ui/res/styles/text_styles.dart';

class AppTheme {
  // static ThemeData lightThemeData =
  //     themeData(lightColorScheme, _lightFocusColor);

  // static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static Color colorSurface({bool isDark = false}){
    var surfaceBasedColor = isDark ? Colors.black : Colors.white;
    return surfaceBasedColor;

  }

  static Color colorOnSurface({bool isDark = false}){
    var onSurfaceBasedColor = isDark ? Colors.black : Colors.white;
    return onSurfaceBasedColor;

  }


  static ThemeData themeData(
      {Color seedColor = Colors.red, bool isDark = false}) {

    var surfaceBasedColor = colorSurface(isDark: isDark);
    var onSurfaceBasedColor = colorOnSurface(isDark: isDark);

    final Color focusColor = isDark
        ? Colors.white.withOpacity(0.12)
        : Colors.black.withOpacity(0.12);

    ColorScheme colorScheme = isDark
        ? ColorScheme.fromSeed(seedColor: seedColor).copyWith(
            brightness: Brightness.dark,

            // onPrimary: _lightFillColor,
            // onSecondary: _darkFillColor,
            // onError: _darkFillColor,
            background:
                surfaceBasedColor, // TbResColors.colorBgDark,//_darkFillColor, //Color(0xFF241E30),
            onBackground: onSurfaceBasedColor, // White with 0.05 opacity
            surface:
                surfaceBasedColor, // TbResColors.colorSurfaceDark,//Color(0xFF1F1929),
            onSurface: onSurfaceBasedColor,
            primaryContainer: Color(0xFF1CDEC9),
            secondaryContainer: Color(0xFF457B6F),
          )
        : ColorScheme.fromSeed(seedColor: seedColor).copyWith(
            brightness: Brightness.light,
            // onPrimary: _darkFillColor,
            // onSecondary: Color(0xFF322942),
            // onError: _darkFillColor,
            
            background:
                surfaceBasedColor, //TbResColors.colorBgLight,//Color(0xFFF5F5F5),// _lightFillColor, //Color(0xFFE6EBEB),
            onBackground: onSurfaceBasedColor,
            surface: surfaceBasedColor, //TbResColors.colorSurfaceLight,
            onSurface: onSurfaceBasedColor, //_darkFillColor,
            primaryContainer: Color(0xFF117378),
            secondaryContainer: Color(0xFFFAFBFB),
          );

    // var colorScheme = if()
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      // Matches manifest.json colors and background color.
      primaryColor: const Color(0xFF030303),
      appBarTheme: AppBarTheme(
        // backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
        color: colorScheme.background,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          onSurfaceBasedColor.withOpacity(0.80),
          surfaceBasedColor,
        ),
        contentTextStyle: _textTheme.bodyLarge!,
      ),
    );
  }

  static final TextTheme _textTheme = TextTheme(
      displayLarge: JlTextStyles.h1,
      displayMedium: JlTextStyles.h2,
      displaySmall: JlTextStyles.h3,
      titleLarge: JlTextStyles.h4,
      titleMedium: JlTextStyles.h5,
      titleSmall: JlTextStyles.h6,
      bodyLarge: JlTextStyles.p1,
      bodyMedium: JlTextStyles.p2,
      bodySmall: JlTextStyles.p3,
      labelLarge: JlTextStyles.caption);
}
