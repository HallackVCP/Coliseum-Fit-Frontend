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
    fontWeight: FontWeight.w200,
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

  static final titleHome = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  // DRAWER
  static final titleDrawer = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );
  // DRAWER
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