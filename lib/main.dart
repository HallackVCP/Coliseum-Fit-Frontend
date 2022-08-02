import 'package:coliseum_fit_aluno/modules/login/login_page.dart';
import 'package:flutter/material.dart';

import 'modules/home/home_page.dart';
import 'shared/themes/app_colors.dart';
import 'shared/themes/app_text_styles.dart';
import 'shared/themes/widgets_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ColiseumFit',
      theme: ThemeData(
        primarySwatch: MaterialCustomColor,
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.background,

        iconTheme: const IconThemeData(
          color: AppColors.primary,
        ),

        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: AppColors.backgroundButton.withOpacity(0.5))),
          errorStyle: AppTextStyles.cancelAlert,
          labelStyle: AppTextStyles.loginTitleField,
        ),

        tabBarTheme: TabBarTheme(
          unselectedLabelColor: Colors.white,
          labelColor: AppColors.primary,
          labelStyle: AppTextStyles.selectedTab,
          unselectedLabelStyle: AppTextStyles.unselectedTab,
      ),

        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          shadowColor: AppColors.background,
          iconTheme: IconThemeData(color: AppColors.primary),
          elevation: 1,
        )
  ),
     //home: HomePage(),
     home: const LoginPage(),

    );
  }
}
