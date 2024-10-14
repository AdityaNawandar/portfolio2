import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact_me_screen.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../providers/theme_provider.dart';
import '../screens/about_me_screen.dart';
import '../screens/home_page_screen.dart';
import '../screens/projects_screen.dart';
import '../utils/responsive_layout.dart';
import '../utils/size_config.dart';

class CommonScaffold extends StatelessWidget {
  ///
  final Widget bodyContent; // Child widget for different pages
  ///
  CommonScaffold({required this.bodyContent});

  ///
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return //
        Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
            overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
          ),
          child: Text.rich(
            TextSpan(
              text: 'Adi',
              style: TextStyle(
                color: kAppTealColor,
                fontWeight: FontWeight.bold,
                fontSize: getFontSize(context, 28),
                fontFamily: 'Signika',
              ),
              children: [
                TextSpan(
                  text: 'tya',
                  style: TextStyle(
                    color: themeProvider.isDarkMode ? kAppWhite : kAppBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: getFontSize(context, 28),
                    fontFamily: 'Signika',
                  ),
                )
              ],
            ),
          ),
          onPressed: () => goToHomePage(context),
        ),
        centerTitle: false,
        actions: [
          if (!ResponsiveLayout.isMobile(context)) ...[
            _buildMenuButton(
                context, themeProvider, 'About', () => goToAboutPage(context)),
            _buildMenuButton(context, themeProvider, 'Projects',
                () => goToProjectsPage(context)),
            _buildMenuButton(context, themeProvider, 'Contact',
                () => goToContactPage(context)),
          ],
          Switch(
            activeTrackColor: themeProvider.isDarkMode ? kGrey800 : kGrey300,
            thumbColor: themeProvider.isDarkMode
                ? WidgetStateProperty.all<Color>(kGrey100)
                : WidgetStateProperty.all<Color>(kGrey800),
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
          ),
          // Add an Icon to open the endDrawer
          if (ResponsiveLayout.isMobile(context))
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu,
                    color:
                        themeProvider.isDarkMode ? Colors.white : Colors.black),
                onPressed: () => Scaffold.of(context)
                    .openEndDrawer(), // Opens drawer correctly
              ),
            ),
        ],
      ),
      endDrawer: ResponsiveLayout.isMobile(context)
          ? Drawer(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 1,
                    colors: themeProvider.isDarkMode
                        ? [Colors.grey.shade800, Colors.grey.shade900]
                        : [Colors.white, Colors.grey.shade400],
                  ),
                ),
                child: ListView(//
                    children: [
                  ListTile(
                    title: Text(
                      'About',
                      style: kMenuTextStyle,
                    ),
                    onTap: () => goToAboutPage(context),
                  ),
                  ListTile(
                    title: Text('Projects', style: kMenuTextStyle),
                    onTap: () => goToProjectsPage(context),
                  ),
                  ListTile(
                    title: Text(
                      'Contact',
                      style: kMenuTextStyle,
                    ),
                    onTap: () => goToContactPage(context),
                  )
                ]),
              ),
            )
          : null,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.7,
            colors: themeProvider.isDarkMode
                ? [Colors.grey.shade800, Colors.grey.shade900]
                // : [kGrey400, Colors.white],
                : [Colors.white, kGrey400],
          ),
        ),
        child: bodyContent, // Insert specific content here
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, ThemeProvider themeProvider,
      String text, VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor:
              themeProvider.isDarkMode ? Colors.white : Colors.black,
          backgroundColor: Colors.transparent,
          overlayColor: Colors.transparent,
          textStyle: TextStyle(
            fontSize: getFontSize(context, 20),
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(text),
      ),
    );
  }

  goToProjectsPage(context) {
    if (ModalRoute.of(context)?.settings.name != ProjectsScreen.routeName) {
      Navigator.of(context).pushNamed(ProjectsScreen.routeName);
    }
  }

  goToAboutPage(context) {
    if (ModalRoute.of(context)?.settings.name != AboutMeScreen.routeName) {
      Navigator.of(context).pushNamed(AboutMeScreen.routeName);
    }
  }

  goToContactPage(context) {
    if (ModalRoute.of(context)?.settings.name != ContactMeScreen.routeName) {
      Navigator.of(context).pushNamed(ContactMeScreen.routeName);
    }
  }

  goToHomePage(context) {
    if (ModalRoute.of(context)?.settings.name != HomePageScreen.routeName) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        HomePageScreen.routeName,
        (Route<dynamic> route) => false,
      );
    }
  }

  ///
}
