import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../models/project_model.dart';

class ProjectsProvider with ChangeNotifier {
  static String adjustPath(String path) {
    return path;
  }

  final List<ProjectModel> _projects = [
    ProjectModel(
      projectId: 'proj1',
      projectName: 'Simple Workout Tracker',
      projectDescription:
          'A workout logging app for tracking daily gym activities. Features include Firebase Phone Authentication, Google Sign-In, and Apple Sign-In for iOS, ensuring secure user access.',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}workout_tracker/SWT_ss1.png',
        '${kstrProjectThumbnailImageDirectoryPath}workout_tracker/SWT_ss2.png',
      ],
      playStoreLink:
          'https://play.google.com/store/apps/details?id=com.shaakuntalapps.workouttracker',
      appStoreLink:
          'http://apps.apple.com/india/app/simpleworkoutracker./id1610070810 ',
      titleColor: kAppGrey,
      bgColor1: kAppGrey,
      bgColor2: kAppGrey,
      technologies: ["Flutter", "Dart", "Firebase"],
    ),
    ProjectModel(
      projectId: 'proj2',
      projectName: 'Sound Recorder',
      projectDescription:
          'A sleek sound recording app with advanced UI, animations, and file system interaction. Handles permissions and audio storage on Android/iOS.',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}sound_recorder/SR_ss1.gif',
        '${kstrProjectThumbnailImageDirectoryPath}sound_recorder/SR_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: kAppDarkPink,
      bgColor1: kAppDarkPink,
      bgColor2: kAppDarkPink,
      technologies: ["Flutter", "Dart"],
    ),
    ProjectModel(
      projectId: 'proj3',
      projectName: 'Food Nutrition',
      projectDescription:
          'A nutrition analysis app fetching data from APIs. Implements nested JSON parsing to provide detailed nutritional information.',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}food_nutrition/FN_ss1.png',
        '${kstrProjectThumbnailImageDirectoryPath}food_nutrition/FN_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: kAppBlue,
      bgColor1: kAppBlue,
      bgColor2: kAppBlue,
      technologies: ["Flutter", "Dart"],
    ),
    ProjectModel(
      projectId: 'proj4',
      projectName: 'E-Commerce',
      projectDescription:
          'A complete e-commerce solution, utilizing multiprovider state management and implementing complex app architecture',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}eComm/eC_ss1.png',
        '${kstrProjectThumbnailImageDirectoryPath}eComm/eC_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: Colors.white,
      bgColor1: Colors.white,
      bgColor2: Colors.black,
      technologies: ["Flutter", "Dart", "Firebase"],
    ),
    ProjectModel(
      projectId: 'proj5',
      projectName: 'Render 3D',
      projectDescription:
          'A 3D object rendering app in Flutter, tackling challenges like rotating shadows and interactive models.',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}3d_demo/3D_ss1.gif',
        '${kstrProjectThumbnailImageDirectoryPath}3d_demo/3D_ss1.gif',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: kAppYellow,
      bgColor1: kAppYellow,
      bgColor2: kAppYellow,
      technologies: ["Flutter", "Dart", "Firebase"],
    ),
    ProjectModel(
      projectId: 'proj6',
      projectName: 'Animated Auth Screens',
      projectDescription:
          'A visually appealing, tutorial-based animated authentication UI that enhances user experience.',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}animated_auth_screens/AAS_ss.gif',
        '${kstrProjectThumbnailImageDirectoryPath}animated_auth_screens/ALS_ss.gif',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: Colors.white.withOpacity(0.8),
      bgColor1: Colors.white.withOpacity(0.9),
      bgColor2: Colors.white.withOpacity(0.9),
      technologies: ["Flutter"],
    ),
    ProjectModel(
      projectId: 'proj7',
      projectName: 'Choose Your Own Adventure',
      projectDescription:
          'An interactive storytelling app enhanced by OpenAI, allowing users to navigate through a series of choices and outcomes. This app uses AI-driven narrative branching and decision-based logic, providing an immersive adventure experience. While the UI is minimal, the app focuses on offering a flexible and engaging narrative journey for users.',
      imageURLs: [
        '${kstrProjectThumbnailImageDirectoryPath}choose_your_own_adventure/cyoa_ss1.png',
        '${kstrProjectThumbnailImageDirectoryPath}choose_your_own_adventure/cyoa_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: Colors.white.withOpacity(0.8),
      bgColor1: Colors.white.withOpacity(0.9),
      bgColor2: Colors.white.withOpacity(0.9),
      technologies: ["Flutter", ".Net Core", "OpenAi"],
    ),
  ];

  List<ProjectModel> get projects {
    return [..._projects];
  }

  ///
}
