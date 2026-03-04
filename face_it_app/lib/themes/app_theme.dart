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
      toolbarHeight: 60,
    ),

    // for the input field here
    inputDecorationTheme: InputDecorationThemeData(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      outlineBorder: BorderSide(width: 1),
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
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        padding: const EdgeInsets.all(12),
      ),
    ),

    // for the snackbar here
    snackBarTheme: SnackBarThemeData(
      elevation: 0.0,
      behavior: SnackBarBehavior.floating,
      contentTextStyle: TextStyle(color: Colors.black),
      insetPadding: const EdgeInsets.all(10),
      showCloseIcon: true,
    ),

    // for the bottom app bar
    bottomAppBarTheme: BottomAppBarThemeData(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
    ),

    // for the circular progress indicator
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Colors.black,
      strokeWidth: 3,
    ),

    chipTheme: ChipThemeData(
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      showCheckmark: false,
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      labelPadding: const EdgeInsets.only(left: 15, right: 15),
      selectedColor: AppColors.primaryMainColor,
      secondaryLabelStyle: TextStyle(color: Colors.black),
    ),
  );
}
