import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../../features/onboarding/screen/WelcomeScreen.dart';
import '../../features/home/screen/HomeScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoHire',
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.accent),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.grey),
  ),
);
