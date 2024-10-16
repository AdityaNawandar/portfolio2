import 'package:flutter/material.dart';

// Define Light Theme
final lightTheme = ThemeData(
  primaryColor: Colors.black,
  fontFamily: 'Signika',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  // textButtonTheme: TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //     backgroundColor: Colors.black, // Default color for text buttons
  //   ),
  // ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black), // Text color for light theme
    bodyMedium: TextStyle(color: Colors.black),
  ),
);

// Define Dark Theme
final darkTheme = ThemeData(
  primaryColor: Colors.white,
  fontFamily: 'Signika',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white), // Text color for dark theme
    bodyMedium: TextStyle(color: Colors.white),
  ),
);
