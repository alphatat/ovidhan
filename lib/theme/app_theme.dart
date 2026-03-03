import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme(Color seedColor, bool isDark) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
      //      fontFamily: 'Noto Sans Bengali',
    );
  }
}
