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

    // for the app bar theme here
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
    ),
  );
}
