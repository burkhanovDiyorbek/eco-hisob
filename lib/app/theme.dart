import 'package:flutter/material.dart';

class AppTheme {
  static const Color mainColor = Color(0xFF38E973);
  static const Color mainTextColor = Color(0xFF163D2B);
  static const Color secondaryTextColor = Color(0xFF125738);
  static const Color inputMainBg = Color(0xFFF1F7F0);
  static const Color inputMainColor = Color(0xFF00C417);
  static const Color outcomeMainColor = Color(0xFFFF0000);
  static const Color buttonDefaultBg = Color(0xFF00C444);

  static const Color darkMainColor = Color(0xFF38E973);
  static const Color darkMainTextColor = Color(0xFFE8F5E8);
  static const Color darkSecondaryTextColor = Color(0xFFB8D4C0);
  static const Color darkInputMainBg = Color(0xFF1A2E1F);
  static const Color darkInputMainColor = Color(0xFF00C417);
  static const Color darkOutcomeMainColor = Color(0xFFFF6B6B);
  static const Color darkButtonDefaultBg = Color(0xFF00C444);
  static const Color darkBackgroundColor = Color(0xFF0F1A13);
  static const Color darkSurfaceColor = Color(0xFF1A2E1F);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: mainColor,
        onPrimary: Colors.white,
        secondary: buttonDefaultBg,
        onSecondary: Colors.white,
        surface: Colors.white,
        onSurface: mainTextColor,
        error: outcomeMainColor,
        onError: Colors.white,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: mainTextColor),
        displayMedium: TextStyle(color: mainTextColor),
        displaySmall: TextStyle(color: mainTextColor),
        headlineLarge: TextStyle(color: mainTextColor),
        headlineMedium: TextStyle(color: mainTextColor),
        headlineSmall: TextStyle(color: mainTextColor),
        titleLarge: TextStyle(color: mainTextColor),
        titleMedium: TextStyle(color: mainTextColor),
        titleSmall: TextStyle(color: mainTextColor),
        bodyLarge: TextStyle(color: mainTextColor),
        bodyMedium: TextStyle(color: mainTextColor),
        bodySmall: TextStyle(color: secondaryTextColor),
        labelLarge: TextStyle(color: mainTextColor),
        labelMedium: TextStyle(color: mainTextColor),
        labelSmall: TextStyle(color: secondaryTextColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonDefaultBg,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: inputMainBg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: inputMainColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: inputMainColor, width: 2),
        ),
        labelStyle: const TextStyle(color: inputMainColor),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: darkMainColor,
        onPrimary: Colors.white,
        secondary: darkButtonDefaultBg,
        onSecondary: Colors.white,
        surface: darkSurfaceColor,
        onSurface: darkMainTextColor,
        error: darkOutcomeMainColor,
        onError: Colors.white,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: darkMainTextColor),
        displayMedium: TextStyle(color: darkMainTextColor),
        displaySmall: TextStyle(color: darkMainTextColor),
        headlineLarge: TextStyle(color: darkMainTextColor),
        headlineMedium: TextStyle(color: darkMainTextColor),
        headlineSmall: TextStyle(color: darkMainTextColor),
        titleLarge: TextStyle(color: darkMainTextColor),
        titleMedium: TextStyle(color: darkMainTextColor),
        titleSmall: TextStyle(color: darkMainTextColor),
        bodyLarge: TextStyle(color: darkMainTextColor),
        bodyMedium: TextStyle(color: darkMainTextColor),
        bodySmall: TextStyle(color: darkSecondaryTextColor),
        labelLarge: TextStyle(color: darkMainTextColor),
        labelMedium: TextStyle(color: darkMainTextColor),
        labelSmall: TextStyle(color: darkSecondaryTextColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: darkButtonDefaultBg,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkInputMainBg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: darkInputMainColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: darkInputMainColor, width: 2),
        ),
        labelStyle: const TextStyle(color: darkInputMainColor),
      ),
    );
  }
}
