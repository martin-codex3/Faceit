import 'package:face_it_app/pages/authentication/create_account_page.dart';
import 'package:face_it_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccountPage(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
    );
  }
}
