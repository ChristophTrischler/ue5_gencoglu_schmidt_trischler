import 'package:flutter/material.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFF0A1929),

    // App Bar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),

    // Icon theme
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 24,
    ),

    // Bottom Navigation theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xffffffff),
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),

    // Custom color scheme
    colorScheme: const ColorScheme.dark(
      primary: Colors.blue,
      secondary: Color(0xFFFF4081), // #FF4081
      surface: Color(0xFF0A1929), // #0A1929
      error: Colors.red,
    ),

    // Text theme
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
  );
}

// Custom colors for app icons
class AppColors {
  static const Color opalBlue = Color(0xFF2196F3);
  static const Color selmaOrange = Color(0xFFFF9800);
  static const Color matrixGreen = Color(0xFF00BFA5);
  static const Color mailPink = Color(0xFFFF4081);
}
