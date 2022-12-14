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
      listTileTheme: const ListTileThemeData(iconColor: Colors.black),
      backgroundColor: const Color(0xFFE5E5E5),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),
    ),

    // Dark Theme
    AppTheme.darkTheme: ThemeData(
      textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.white)),
      brightness: Brightness.dark,
      dividerColor: Colors.black54,
      primaryColor: Colors.black,
      primarySwatch: Colors.grey,
      listTileTheme: const ListTileThemeData(iconColor: Colors.white),
      backgroundColor: const Color(0xFF212121),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromRGBO(66, 66, 66, 66),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.greenAccent,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromRGBO(66, 66, 66, 66),
        foregroundColor: Colors.white,
      ),
    ),
  };
}
