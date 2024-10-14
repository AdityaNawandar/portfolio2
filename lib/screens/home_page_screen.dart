import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/file_download.dart';
import 'package:portfolio/widgets/common_scaffold.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../providers/theme_provider.dart';
import '../utils/responsive_layout.dart';
import '../utils/size_config.dart';
import '../widgets/standard_outlined_button.dart';

class HomePageScreen extends StatelessWidget {
  ///
  const HomePageScreen({super.key});

  ///
  static const routeName = 'home_page_screen';

  ///
  @override
  Widget build(BuildContext context) {
    ///
    final themeProvider = Provider.of<ThemeProvider>(context);
    final List<Widget> children = [
      Text(
        'I\'m a ',
        style: TextStyle(
          fontSize: getFontSize(context, 60),
          fontWeight: FontWeight.bold,
          fontFamily: 'Signika',
          color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
        ),
      ),
      AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            '.Net',
            textStyle: getAnimatedKeywordStyle(context),
            speed: Duration(milliseconds: 200),
          ),
          TypewriterAnimatedText(
            'Flutter',
            textStyle: getAnimatedKeywordStyle(context),
            speed: Duration(milliseconds: 200),
          ),
          TypewriterAnimatedText(
            'Fullstack',
            textStyle: getAnimatedKeywordStyle(context),
            speed: Duration(milliseconds: 200),
          ),
        ],
        repeatForever: true,
      ),
      Text(
        ' Developer',
        style: TextStyle(
          fontSize: getFontSize(context, 60),
          fontWeight: FontWeight.bold,
          fontFamily: 'Signika',
          color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
        ),
        textAlign: TextAlign.center,
      ),
    ];
    //
    return //
        CommonScaffold(
      bodyContent: //
          Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text.rich(
            TextSpan(
              text: 'Hello! \n My name is ',
              style: TextStyle(
                fontSize: getFontSize(context, 60),
                fontWeight: FontWeight.bold,
                fontFamily: 'Signika',
                color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Aditya',
                  style: TextStyle(
                    fontSize: getFontSize(context, 60),
                    fontWeight: FontWeight.bold,
                    color: kAppTealColor, // Turquoise for name
                  ),
                ),
                TextSpan(
                  text: ',',
                  style: TextStyle(
                    fontSize: getFontSize(context, 60),
                    fontWeight: FontWeight.bold,
                    color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          ResponsiveLayout.isMobile(context)
              ? Column(
                  children: children,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
          SizedBox(height: 40),
          StandardOutlinedButton(
            buttonText: "Download Resume",
            onPressed: () => FileDownloader.downloadFileToUserComputer(),
          )
        ]),
      ),
    );
  }

  ///
}
