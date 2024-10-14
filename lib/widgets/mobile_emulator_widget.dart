// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../constants/constants.dart';
// import '../providers/theme_provider.dart';
// import '../utils/size_config.dart';
// import 'common_scaffold.dart';

// class MobileEmulatorWidget extends StatelessWidget {
//   ///
//   @override
//   Widget build(BuildContext context) {
//     ///
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     final List<Widget> children = [
//       Text(
//         'I\'m a ',
//         style: TextStyle(
//           fontSize: getFontSize(context, 25),
//           fontWeight: FontWeight.w900,
//           fontFamily: 'Signika',
//           color: !themeProvider.isDarkMode ? Colors.black : Colors.white,
//         ),
//       ),
//       AnimatedTextKit(
//         animatedTexts: [
//           TypewriterAnimatedText(
//             '.NET',
//             textStyle: getAnimatedKeywordStyleForEmulator(context),
//             speed: Duration(milliseconds: 200),
//           ),
//           TypewriterAnimatedText(
//             'Flutter',
//             textStyle: getAnimatedKeywordStyleForEmulator(context),
//             speed: Duration(milliseconds: 200),
//           ),
//           TypewriterAnimatedText(
//             'Fullstack',
//             textStyle: getAnimatedKeywordStyleForEmulator(context),
//             speed: Duration(milliseconds: 200),
//           ),
//         ],
//         repeatForever: true,
//       ),
//       Text(
//         ' Developer',
//         style: TextStyle(
//           fontSize: getFontSize(context, 25),
//           fontWeight: FontWeight.w900,
//           fontFamily: 'Signika',
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ];

//     ///
//     return Center(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           // Mobile Frame
//           Container(
//             width: 300,
//             height: 600,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40),
//               border: Border.all(color: Colors.black, width: 5),
//             ),
//           ),
//           // Content inside the Mobile Frame
//           Positioned(
//             // top: 40,
//             // bottom: 50,
//             child: SizedBox(
//               width: 250,
//               height: 500,
//               child: MediaQuery(
//                 // Simulating mobile constraints inside the emulator
//                 data: MediaQuery.of(context).copyWith(size: Size(300, 600)),
//                 child: CommonScaffold(
//                   // Ensure mobile-specific layout (like drawer) is used
//                   bodyContent: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text.rich(
//                           TextSpan(
//                             text: 'Hello! \n My name is ',
//                             style: TextStyle(
//                               fontSize: getFontSize(context, 25),
//                               fontWeight: FontWeight.w900,
//                               fontFamily: 'Signika',
//                               color: !themeProvider.isDarkMode
//                                   ? Colors.black
//                                   : Colors.white,
//                             ),
//                             children: <TextSpan>[
//                               TextSpan(
//                                 text: 'Aditya',
//                                 style: TextStyle(
//                                   fontSize: getFontSize(context, 25),
//                                   fontWeight: FontWeight.bold,
//                                   color: kAppTealColor, // Turquoise for name
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: ',',
//                                 style: TextStyle(
//                                   fontSize: getFontSize(context, 25),
//                                   fontWeight: FontWeight.bold,
//                                   // color: kAppTealColor, // Turquoise for name
//                                 ),
//                               ),
//                             ],
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         Column(
//                           children: children,
//                         ),
//                         const SizedBox(height: 20),
//                         ElevatedButton(onPressed: () {}, child: Text("Resume")),
//                       ]),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
