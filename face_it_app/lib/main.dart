import 'package:face_it_app/pages/authentication/create_account_page.dart';
import 'package:face_it_app/pages/hobbies/hobbies_page.dart';
import 'package:face_it_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'themes/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HobbiesPage(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
    );
  }
}
