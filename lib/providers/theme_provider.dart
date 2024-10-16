import 'package:flutter/material.dart';
import '../theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkMode = false; // Default to light theme

  ThemeData get themeData => isDarkMode ? darkTheme : lightTheme;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
