import 'package:flutter/material.dart';
import '../theme/theme.dart'; // Import your theme definitions

class ThemeProvider with ChangeNotifier {
  bool isDarkMode = false; // Default to light theme

  ThemeData get themeData => isDarkMode ? darkTheme : lightTheme;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
