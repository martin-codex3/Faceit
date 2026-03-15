import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.primaryBlack,
    primaryColor: AppColors.primaryGreen,
    fontFamily: "ProFont",

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryGreen,
      brightness: Brightness.dark,
    ),

    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.primaryWhite,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),

      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryWhite,
      ),

      headlineMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        color: AppColors.primaryWhite,
      ),
    ),

    // for the app bar here
    appBarTheme: AppBarThemeData(
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      toolbarHeight: 70,
    ),

    // for the navigation bar
    navigationBarTheme: NavigationBarThemeData(
      elevation: 0.0,
      height: 60,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.fromMap({
        WidgetState.any: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      }),
    ),

    // for the input theme
    inputDecorationTheme: InputDecorationThemeData(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    ),
  );
}
