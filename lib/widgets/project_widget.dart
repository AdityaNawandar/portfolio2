import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../models/project_model.dart';
import '../providers/theme_provider.dart';
import '../utils/responsive_layout.dart';
import '../utils/size_config.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
    required this.project,
    this.bgColor,
  });

  final ProjectModel project;
  final bgColor;

  @override
  Widget build(BuildContext context) {
    ///
    final themeProvider = Provider.of<ThemeProvider>(context);
    final List<Widget> children = [
      ///SCREENSHOTS
      ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          color: themeProvider.isDarkMode ? kAppWhite : kAppBlack,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      project.imageURLs![0],
                      height: SizeConfig.screenHeight,
                    ),
                  ),
                ),
                //SizedBox(width: 10),
                if (project.imageURLs![1] != '')
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        project.imageURLs![1],
                        height: SizeConfig.screenHeight,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 40),
      //PROJECT TITLE
      Column(
          //
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              project.projectName,
              style: TextStyle(
                color: themeProvider.isDarkMode ? kAppWhite : kAppBlack,
                fontSize: getFontSize(context, 50),
                fontWeight: FontWeight.bold,
              ),
            ),
            //PROJECT DESCRIPTION
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: !ResponsiveLayout.isMobile(context) ? 1000 : 600,
                maxHeight: double.infinity,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  project.projectDescription,
                  style: TextStyle(
                    color: !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
                    fontSize: getFontSize(context, 36),
                    // fontFamily: kAppFont2,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            //TECHNOLOGIES
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                ...project.technologies
                    .map(
                      (tech) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Chip(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10),
                          label: Text(
                            tech,
                            style: TextStyle(
                              fontSize: getFontSize(context, 28),
                              color: !themeProvider.isDarkMode
                                  ? kAppWhite
                                  : kAppBlack,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor:
                              !themeProvider.isDarkMode ? kAppBlack : kAppWhite,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            SizedBox(height: 20),
            //BADGES
            Container(
              height: 75,
              child: Row(children: [
                if (project.playStoreLink != null)
                  GestureDetector(
                    // onTap: () => launch(project.playStoreLink!),
                    child: Image.asset(
                      kPlayStoreBadgeImage,
                      height: 75,
                    ),
                  ),
                if (project.appStoreLink != null)
                  GestureDetector(
                    onTap: () {
                      // launch(project.appStoreLink!);
                    },
                    child: SvgPicture.asset(
                      kAppStoreBadgeImage,
                      height: 50,
                    ),
                  ),
              ]),
            ),
          ]),
    ];

    ///
    return //
        Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: SizeConfig.screenHeight,
        child: FittedBox(
          alignment: Alignment.topCenter,
          fit: BoxFit.scaleDown,
          child: //
              !ResponsiveLayout.isMobile(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: children)
                  : Column(
                      children: children,
                    ),
        ),
      ),
    );
  }
}
