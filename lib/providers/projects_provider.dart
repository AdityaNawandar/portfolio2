import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../models/project_model.dart';

class ProjectsProvider with ChangeNotifier {
  final List<ProjectModel> _projects = [
    ProjectModel(
      projectId: 'proj1',
      projectName: 'Simple Workout Tracker',
      projectDescription:
          'A very simple workout logger app to save your everyday gym workout records.'
          '\nIn this app, I implemented Phone Authentication with Firebase, alongwith Google Sign-In and Apple Sign-In (for iOS).',
      imageURLs: [
        'assets/images/workout_tracker/SWT_ss1.png',
        'assets/images/workout_tracker/SWT_ss2.png',
      ],
      playStoreLink:
          'https://play.google.com/store/apps/details?id=com.shaakuntalapps.workouttracker',
      appStoreLink:
          'http://apps.apple.com/india/app/simpleworkoutracker./id1610070810 ',
      titleColor: kAppGrey,
      bgColor1: kAppGrey,
      bgColor2: kAppGrey,
    ),
    ProjectModel(
      projectId: 'proj2',
      projectName: 'Sound Recorder',
      projectDescription:
          'A modern UI converted to a fully functional sound recording and playing app. \nThis app included interacting with the android and iOS file systems, handling permissions and saving audio to phone memory. '
          'The app features successful implementation of a complex UI with animations, gradients and shadow effects.',
      imageURLs: [
        'assets/images/sound_recorder/SR_ss1.gif',
        'assets/images/sound_recorder/SR_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: kAppDarkPink,
      bgColor1: kAppDarkPink,
      bgColor2: kAppDarkPink,
    ),
    ProjectModel(
      projectId: 'proj3',
      projectName: 'Food Nutrition',
      projectDescription:
          'Making use of an API as a backend, this app would give you the nutritional value of any food/recipe. '
          '\nThis app implements parsing nested json data received from the API.',
      imageURLs: [
        'assets/images/food_nutrition/FN_ss1.png',
        'assets/images/food_nutrition/FN_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: kAppBlue,
      bgColor1: kAppBlue,
      bgColor2: kAppBlue,
    ),
    ProjectModel(
      projectId: 'proj4',
      projectName: 'eComm.com',
      projectDescription:
          'A typical e-Commerce app. Using multiproviders for state management, a relatively bigger and slightly more complex app to try hands on.',
      imageURLs: [
        'assets/images/eComm/eC_ss1.png',
        'assets/images/eComm/eC_ss2.png',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: Colors.white,
      bgColor1: Colors.white,
      bgColor2: Colors.black,
    ),
    ProjectModel(
      projectId: 'proj5',
      projectName: 'Render 3D',
      projectDescription:
          'App prototype to demonstrate rendering of 3D models in Flutter. A challenge in the app was to create a rotating shadow for the object.',
      imageURLs: [
        'assets/images/3d_demo/3D_ss1.gif',
        'assets/images/3d_demo/3D_ss1.gif',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: kAppYellow,
      bgColor1: kAppYellow,
      bgColor2: kAppYellow,
    ),
    ProjectModel(
      projectId: 'proj6',
      projectName: 'Animated Auth Screens',
      projectDescription:
          'A couple of animated auth screens built from tutorials; giving a beautiful UI experience.',
      imageURLs: [
        'assets/images/animated_auth_screens/AAS_ss.gif',
        'assets/images/animated_auth_screens/ALS_ss.gif',
      ],
      playStoreLink: null,
      appStoreLink: null,
      titleColor: Colors.white.withOpacity(0.8),
      bgColor1: Colors.white.withOpacity(0.9),
      bgColor2: Colors.white.withOpacity(0.9),
    ),
  ];

  List<ProjectModel> get projects {
    return [..._projects];
  }
}
