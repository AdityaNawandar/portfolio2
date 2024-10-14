import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../providers/theme_provider.dart';
import '../utils/responsive_layout.dart';

class StandardButton extends StatelessWidget {
  ///
  const StandardButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  ///
  final String buttonText;
  final Function onPressed;

  ///
  @override
  Widget build(BuildContext context) {
    ///
    final themeProvider = Provider.of<ThemeProvider>(context);

    ///
    return //
        ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        backgroundColor: (!themeProvider.isDarkMode)
            ? kAppBlack
            : kAppWhite, // Purple button
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: !ResponsiveLayout.isMobile(context) ? 24 : 20,
          color: (!themeProvider.isDarkMode) ? kAppWhite : kAppBlack,
        ),
      ),
    );
  }
}
