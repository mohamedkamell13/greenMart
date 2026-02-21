import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_fonts.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: AppFonts.poppins,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(double.infinity, 61),
        foregroundColor: AppColors.backgroundColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.title.copyWith(color: AppColors.greyColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18.2),
        borderSide: BorderSide.none,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,
      selectedLabelStyle: TextStyles.label.copyWith(height: 2),
      unselectedLabelStyle: TextStyles.label.copyWith(height: 2),
      elevation: 0,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      centerTitle: true,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    dividerColor: Colors.transparent,
  );
}
