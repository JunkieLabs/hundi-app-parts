import 'package:flutter/material.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme.dart';
import 'package:hundi_flutter_parts/ui/res/theme/theme_helper.dart';
import 'package:hundi_flutter_parts/ui/res/values/colors.dart';

@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  //

  final Color surface; // = Colors.white;

  final Color onSurface; // = Colors.black;
  final Color onSurfaceHigh;
  final Color onSurfaceMedium; // = Colors.black54;
  final Color onSurfaceDisable; // = Colors.black38;

  final Color onSurfaceLowest;

  final Color primaryHigh; // = Colors.greenAccent;
  final Color primary;
  final Color primaryLight;

  final Color seedColor;

  AppThemeColors({
    required this.surface,
    required this.onSurface,
    required this.onSurfaceHigh,
    required this.onSurfaceMedium,
    required this.onSurfaceDisable,
    required this.onSurfaceLowest,
    required this.primaryHigh,
    required this.primary,
    required this.primaryLight,
    required this.seedColor,
    // required this.failure,
  }) {
    // onSurfaceHigh = AppTheme.colorSurface();
  }

  @override
  ThemeExtension<AppThemeColors> copyWith({
    Color? surface,
    Color? onSurface,
    Color? onSurfaceHigh,
    Color? onSurfaceMedium,
    Color? onSurfaceDisable,
    Color? onSurfaceLowest,
    Color? primaryHigh,
    Color? primary,
    Color? primaryLight,
    Color? seedColor,
  }) {
    return AppThemeColors(
      surface: surface ?? this.surface, // = Colors.white;

      onSurface: onSurface ?? this.onSurface, // = Colors.black;
      onSurfaceHigh: onSurfaceHigh ?? this.onSurfaceHigh,
      onSurfaceMedium:
          onSurfaceMedium ?? this.onSurfaceMedium, // = Colors.black54;
      onSurfaceDisable:
          onSurfaceDisable ?? this.onSurfaceDisable, // = Colors.black38;

      onSurfaceLowest: onSurfaceLowest ?? this.onSurfaceLowest,

      primaryHigh: primaryHigh ?? this.primaryHigh, // = Colors.greenAccent;
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,

      seedColor: seedColor ?? this.seedColor,
    );
  }

  @override
  ThemeExtension<AppThemeColors> lerp(
      ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) {
      return this;
    }
    return AppThemeColors(
      surface: Color.lerp(surface, other.surface, t) ?? other.surface,
      onSurface: Color.lerp(onSurface, other.onSurface, t) ?? other.onSurface,
      onSurfaceHigh: Color.lerp(onSurfaceHigh, other.onSurfaceHigh, t) ??
          other.onSurfaceHigh,
      onSurfaceMedium: Color.lerp(onSurfaceMedium, other.onSurfaceMedium, t) ??
          other.onSurfaceMedium,
      onSurfaceDisable:
          Color.lerp(onSurfaceDisable, other.onSurfaceDisable, t) ??
              other.onSurfaceDisable,
      onSurfaceLowest: Color.lerp(onSurfaceLowest, other.onSurfaceLowest, t) ??
          other.onSurfaceLowest,
      primaryHigh:
          Color.lerp(primaryHigh, other.primaryHigh, t) ?? other.primaryHigh,
      primary: Color.lerp(primary, other.primary, t) ?? other.primary,
      primaryLight: Color.lerp(primaryLight, other.primary, t) ?? other.primaryLight,

      seedColor: Color.lerp(seedColor, other.seedColor, t) ?? other.seedColor,

      // isDark: true,
    );
  }

  @override
  String toString() {
    return 'AppThemeColors(seed: $seedColor)';
  }

  factory AppThemeColors.seedColor({
    Color seedColor = Colors.red,
    bool isDark = false,
  }) {
    print("isDark: $isDark $seedColor");
    var surface = AppTheme.colorSurface(isDark: isDark);
    var onSurface = AppTheme.colorOnSurface(isDark: isDark);

    var onSurfaceHigh =
        JlThemeHelper.colorBlend(surface, onSurface, JlColorEmphasize.high);
    var onSurfaceMedium =
        JlThemeHelper.colorBlend(surface, onSurface, JlColorEmphasize.medium);
    var onSurfaceDisable =
        JlThemeHelper.colorBlend(surface, onSurface, JlColorEmphasize.disabled);
    var onSurfaceLowest =
        JlThemeHelper.colorBlend(surface, onSurface, JlColorEmphasize.lowest);
    var primary = JlThemeHelper.colorPrimary(surface, seedColor);
    var primaryHigh =
        JlThemeHelper.colorBlend(seedColor, onSurface, JlColorEmphasize.lowest);
    var primaryLight =
        JlThemeHelper.colorBlend(seedColor, surface, JlColorEmphasize.disabled);

    return AppThemeColors(
        surface: surface,
        onSurface: onSurface,
        onSurfaceHigh: onSurfaceHigh,
        onSurfaceMedium: onSurfaceMedium,
        onSurfaceDisable: onSurfaceDisable,
        onSurfaceLowest: onSurfaceLowest,
        primaryHigh: primaryHigh,
        primary: primary,
        primaryLight: primaryLight,
        seedColor: seedColor);
  }

}
