import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(

);

const FloatingActionButtonThemeData _floatingActionButtonThemeData = FloatingActionButtonThemeData(
    backgroundColor: AppColors.backgroundButton,
    foregroundColor: AppColors.primary,
  );


TabBarTheme _tabBarTheme = TabBarTheme(
          unselectedLabelColor: Colors.white,
          labelColor: AppColors.primary,
          labelStyle: AppTextStyles.selectedTab,
          unselectedLabelStyle: AppTextStyles.unselectedTab,
          labelPadding: EdgeInsets.symmetric(vertical: 20),
);