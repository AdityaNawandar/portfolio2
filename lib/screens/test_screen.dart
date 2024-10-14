import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../widgets/light_effect_container.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///
    final themeProvider = Provider.of<ThemeProvider>(context);

    ///
    return //
        LightEffectContainer(
      child: Scaffold(
        body: Text(
          'I\'m a ',
          style: TextStyle(
            fontSize: getFontSize(context, 60),
            fontWeight: FontWeight.w900,
            fontFamily: 'Signika',
            color: !themeProvider.isDarkMode ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
