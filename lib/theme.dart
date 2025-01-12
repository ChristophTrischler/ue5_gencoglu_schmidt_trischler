import 'package:flutter/material.dart';

const mainColor = Color(0xFF0A2352);

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: mainColor,
    scaffoldBackgroundColor: mainColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: mainColor,
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: mainColor),
      iconTheme: IconThemeData(color: mainColor),
    ),
    cardTheme: CardTheme(
      color: Colors.white.withOpacity(0.6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    iconTheme: const IconThemeData(
      color: mainColor,
      size: 24,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: mainColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: mainColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: mainColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: mainColor,
      selectedIconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
}

class AppColors {
  static const Color opalBlue = Color(0xFF2196F3);
  static const Color selmaOrange = Color(0xFFFF9800);
  static const Color matrixGreen = Color(0xFF00BFA5);
  static const Color mailPink = Color(0xFFFF4081);
}

class LessonColors {
  static const learning = mainColor;
  static const free = Color(0xFF666666);
  static const mensa = Color(0xFF008246);
}
