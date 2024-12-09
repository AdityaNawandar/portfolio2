import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/providers/about_me_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/utils/responsive_layout.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/common_scaffold.dart';
import 'package:portfolio/widgets/standard_outlined_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';

///

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  static const routeName = 'about_me_screen';

  ///
  @override
  Widget build(BuildContext context) {
    ///
    SizeConfig().init(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    final List<Widget> children = [
      // Left side: Picture
      Flexible(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.5,
              colors: themeProvider.isDarkMode
                  ? [Colors.grey.shade800, Colors.grey.shade900]
                  : [Colors.white, Colors.grey.shade400],
            ),
          ),
          child: Center(
            child: CircleAvatar(
              radius: !ResponsiveLayout.isMobile(context) ? 150 : 120,
              backgroundImage: AssetImage(kstrProfileImagePath),
            ),
          ),
        ),
      ),

      // Right side: Text content
      Flexible(
        flex: 6,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.6,
              colors: themeProvider.isDarkMode
                  ? [Colors.grey.shade800, Colors.grey.shade900]
                  : [Colors.white, Colors.grey.shade400],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Aditya Nawandar',
                style: TextStyle(
                  fontSize: getFontSize(context, 42),
                  fontWeight: FontWeight.bold,
                  color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: getFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                  color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
                ),
              ),
              SizedBox(height: 20),
              Text(
                kAboutMe,
                style: TextStyle(
                  fontSize: getFontSize(context, 18),
                  color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 40),
              Wrap(
                spacing: 20,
                runSpacing: 10,
                children: [
                  SvgPicture.asset(svgPath('dotnet.svg'), width: 50),
                  SvgPicture.asset(svgPath('dotnetcore.svg'), width: 50),
                  SvgPicture.asset(svgPath('csharp.svg'), width: 50),
                  SvgPicture.asset(svgPath('flutter.svg'), width: 50),
                  SvgPicture.asset(svgPath('dart.svg'), width: 50),
                  SvgPicture.asset(svgPath('javascript.svg'), width: 50),
                  SvgPicture.asset(svgPath('azure.svg'), width: 50),
                  SvgPicture.asset(svgPath('firebase.svg'), width: 50),
                  SvgPicture.asset(svgPath('git.svg'), width: 50),
                  SvgPicture.asset(svgPath('sqlserver.svg'), width: 50),
                ],
              ),
              SizedBox(height: 40),
              // Add the GitHub link button
              StandardOutlinedButton(
                buttonText: 'View My GitHub',
                onPressed: () async {
                  final githubUrl =
                      Uri.parse('https://github.com/AdityaNawandar');
                  if (await canLaunchUrl(githubUrl)) {
                    launchUrl(githubUrl, webOnlyWindowName: '_blank');
                  } else {
                    throw 'Could not launch $githubUrl';
                  }
                },
              ),
            ],
          ),
        ),
      ),
    ];

    return CommonScaffold(
      bodyContent: Padding(
        padding: EdgeInsets.all(0),
        child: (!ResponsiveLayout.isMobile(context))
            ? Row(
                children: children,
              )
            : SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: SizeConfig.screenHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: children,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  String svgPath(String fileName) {
    return '$kstrTechnologyLogoSvgDirectorysPath$fileName';
  }

  ///
}
