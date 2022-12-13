import 'package:flutter/material.dart';

enum AppTheme { lightTheme, darkTheme }

class AppThemes {
  static final appThemeData = {
    // Light Theme
    AppTheme.lightTheme: ThemeData(
      textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.black)),
      brightness: Brightness.light,
      dividerColor: const Color(0xff757575),
      primaryColor: Colors.white,
      primarySwatch: Colors.grey,
      backgroundColor: const Color(0xFFE5E5E5),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    ),

    // Dark Theme
    AppTheme.darkTheme: ThemeData(
      textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.white)),
      brightness: Brightness.dark,
      dividerColor: Colors.black54,
      primaryColor: Colors.black,
      primarySwatch: Colors.grey,
      backgroundColor: const Color(0xFF212121),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
      ),
    ),
  };
}
