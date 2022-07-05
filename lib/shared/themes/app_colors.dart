import 'package:flutter/material.dart';

class AppColors{
  static const Color background = Color(0xFF062029);
  static const Color primary = Color(0xFFD0FD3E);
  static const Color seaGreen = Color(0xFF008148);
  static const Color warningtangerine = Color(0xFFEF8A17);
  static const Color warningRed = Color(0xFFEF2917);
  static const Color backgroundButton = Color.fromARGB(255, 93, 93, 93);
  static const Color border = Colors.grey;
}

const MaterialColor MaterialCustomColor = MaterialColor(
    0xFFD0FD3E,
    <int, Color> {
      50: AppColors.background,
      100: AppColors.primary,
      200: AppColors.seaGreen,
      300: AppColors.warningtangerine,
      400: AppColors.warningRed,
      500: AppColors.border,
      600: AppColors.backgroundButton,
      700: AppColors.background,
    }
  );

  const FloatingActionButtonThemeData floatingActionButtonCustomTheme = FloatingActionButtonThemeData(
    backgroundColor: AppColors.backgroundButton,
    foregroundColor: AppColors.primary,
  );