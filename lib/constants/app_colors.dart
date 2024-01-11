import 'package:flutter/material.dart' show Color, ColorScheme, ThemeData;

class AppColors {
  static const primary = Color(0xFF037CBC);
  static const secondary = Color(0xFF090428);

  static final themeData = ThemeData.dark(useMaterial3: true).copyWith(
    primaryColor: primary,
    secondaryHeaderColor: secondary,
    colorScheme: const ColorScheme.dark(
      primary: primary,
      secondary: secondary,
    ),
  );
}
