import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {

// LOGIN PAGE
  static final loginTitleField = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final loginInputField = GoogleFonts.openSans(
    fontSize: 16,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static final loginSimple = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: Colors.white,
  );
  
  static final loginButtonSelected = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static final loginButtonUnselected = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: Colors.white,
  );

//Alert
  static final confirmAlert = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.seaGreen,
  );
  
  static final cancelAlert = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.warningRed,
  );

//Home
  static final titleHome = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  
  static final titleHomeSecondary = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w200,
    color: Colors.white,
  );
  
// Tile List Ficha
  static final titleListTileFicha = GoogleFonts.openSans(
    fontSize: 20,
    fontWeight: FontWeight.w200,
    color: Colors.white,
  );
  
  static final checkTitleListTileFicha = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w200,
    decoration: TextDecoration.lineThrough,
    color: Colors.white,
  );
  
  static final trailingListTileFicha = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  //Tab bar
  static final selectedTab = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static final unselectedTab = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w200,
    color: Colors.white,
  );

  // ListTile
   static final titleList = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

   static final subtitleList = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );


  // DRAWER
  static final titleDrawer = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );

  static final subtitleDrawer = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.background,
  );

  // TEXTS LOGO
  static final logoFont = GoogleFonts.iceberg(
    fontSize: 32,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );

  static final logoSubtitleFont = GoogleFonts.iceberg(
    fontSize: 26,
    color: AppColors.primary,
    fontWeight: FontWeight.w200,
  );


}