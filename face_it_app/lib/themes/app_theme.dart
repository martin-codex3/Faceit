import 'package:face_it_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // for the dark theme here
  static final darkTheme = ThemeData(
    fontFamily: "ProFont",
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryBlack,
      brightness: Brightness.dark,
    ),

    // for the scaffold theme here
    scaffoldBackgroundColor: AppColors.primaryBlack,

    // for the text theme here
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),

      headlineMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.normal,
      ),

      titleMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.normal,
      ),
    ),

    // for the app bar theme here
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      toolbarHeight: 40,
    ),

    // for the input field here
    inputDecorationTheme: InputDecorationThemeData(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryMainRed, width: 1),
      ),
      errorStyle: TextStyle(color: AppColors.primaryMainRed),
    ),

    // for the filled button here
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        elevation: 0.0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.primaryMainColor,
        textStyle: TextStyle(
          color: AppColors.primaryBlack,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        iconColor: AppColors.primaryBlack,
        padding: const EdgeInsets.all(12),
      ),
    ),
  );
}
