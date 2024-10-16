import 'package:flutter/material.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../utils/responsive_layout.dart';

class StandardOutlinedButton extends StatelessWidget {
  ///
  const StandardOutlinedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  ///
  final String buttonText;
  final Function onPressed;

  ///
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return OutlinedButton(
      onPressed: () => onPressed(),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: (!themeProvider.isDarkMode)
              ? kAppBlack
              : kAppWhite, // Black or white border
          width: 2, // Border width
        ),
        overlayColor: (!themeProvider.isDarkMode) ? kAppBlack : kAppWhite,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: !ResponsiveLayout.isMobile(context) ? 24 : 20,
          color: (!themeProvider.isDarkMode)
              ? kAppBlack
              : kAppWhite, // Text color changes with theme
        ),
      ),
    );
  }
}
