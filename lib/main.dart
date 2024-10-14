import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'providers/projects_provider.dart';
import 'providers/theme_provider.dart';
import 'screens/about_me_screen.dart';
import 'screens/contact_me_screen.dart';
import 'screens/home_page_screen.dart';
import 'screens/projects_screen.dart';
// import 'theme/theme.dart';

void main() {
  // We need to call it manually,
  // because we going to call setPreferredOrientations()
  // before the runApp() call
  WidgetsFlutterBinding.ensureInitialized();
  // Check if the app is running on mobile (Android/iOS)
  if (!kIsWeb) {
    // Lock orientation to portrait only for mobile devices (non-web)
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
      (_) => runApp(
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: const MyApp(),
        ),
      ),
    );
  } else {
    // For web, do not lock the orientation
    runApp(
      ChangeNotifierProvider(
        create: (context) =>
            ThemeProvider(), // Initialize the theme provider with a default theme
        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    ///
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => ProjectsProvider()),
        ),
        // ChangeNotifierProvider(
        //   create: ((context) => GameProvider()),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: themeProvider.themeData,
        // home: const TestScreen(),
        home: HomePageScreen(),
        routes: {
          HomePageScreen.routeName: (context) => const HomePageScreen(),
          ContactMeScreen.routeName: (context) => const ContactMeScreen(),
          ProjectsScreen.routeName: (context) => const ProjectsScreen(),
          AboutMeScreen.routeName: (context) => AboutMeScreen(),
        },
      ),
    );
  }
}
