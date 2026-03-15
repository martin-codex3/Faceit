import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryBlack,
    primaryColor: AppColors.primaryGreen,
    fontFamily: "ProFont",

    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryGreen),

    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.primaryWhite,
        fontSize: 18,
        fontWeight: FontWeight.w500,
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
    ),

    // for the navigation bar
    navigationBarTheme: NavigationBarThemeData(
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.fromMap({
        WidgetState.any: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      }),
    ),
  );
}
