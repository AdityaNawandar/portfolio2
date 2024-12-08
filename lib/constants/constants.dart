import 'package:flutter/material.dart';
import '../utils/size_config.dart';

// Reuse these colors across your app (for appBar, scaffold, thumb, etc.)
const Color kAppOrange = Color.fromARGB(255, 218, 106, 61);
const Color kAppGreen = Color.fromARGB(255, 188, 214, 100);
const Color kAppWhite = Color.fromARGB(255, 255, 255, 255);
const Color kAppBlack = Color.fromARGB(255, 38, 38, 38);
const Color kAppBlue = Color.fromRGBO(184, 214, 235, 1);
const Color kAppPink = Color.fromARGB(255, 241, 219, 219);
const Color kAppGrey = Color.fromARGB(255, 119, 116, 116);
const Color kAppYellow = Color.fromARGB(255, 255, 245, 157);
const Color kAppDarkPink = Color.fromARGB(255, 230, 66, 101);
const Color kRecordButtonShadowColor = Color(0xffff1134);
const Color kAppTealColor = Color(0xFF00C9A7);
const Color kGrey100 = Color(0xFFF5F5F5); // Equivalent to Colors.grey.shade100
const Color kGrey200 = Color(0xFFEEEEEE); // Equivalent to Colors.grey.shade200
const Color kGrey300 = Color(0xFFE0E0E0); // Equivalent to Colors.grey.shade300
const Color kGrey400 = Color(0xFFBDBDBD); // Equivalent to Colors.grey.shade400
const Color kGrey700 = Color(0xFF616161); // Equivalent to Colors.grey.shade700
const Color kGrey800 = Color(0xFF424242); // Equivalent to Colors.grey.shade800

var kAppFont = 'MuteFruit';
var kAppFont2 = 'PostNoBills';
//var kAppFontStyle = Font('PostNoBills', )

const kPlayStoreBadgeImage = 'assets/images/google-play-badge.png';
const kAppStoreBadgeImage = 'assets/images/apple-app-store-badge.svg';

///SNAKE
//Mobile

const kTotalNoOfSquaresMobile = 760;
const kSingleCellSizeMobile = 20;
const kSnakeCellNumbersMobile = [45, 65, 85, 105, 125];
const kRandomNextIntLimitMobile = 700;

//Desktop
const kTotalNoOfSquaresDesktop = 1300;
const kSingleCellSizeDesktop = 50;
const kSnakeCellNumbersDesktop = [106, 156, 206, 256, 306, 356, 406, 456];
const kRandomNextIntLimitDesktop = 1200;

///
// Menu Style
const TextStyle kMenuTextStyle = TextStyle(
  fontSize: 24, // Common font size for menu
  fontWeight: FontWeight.bold, // Bold text for menu
);

getAnimatedKeywordStyle(context) {
  return TextStyle(
    fontSize: getFontSize(context, 60),
    fontWeight: FontWeight.bold,
    fontFamily: 'Signika',
    color: kAppTealColor,
  );
}

getAnimatedKeywordStyleForEmulator(context) {
  return TextStyle(
    fontSize: getFontSize(context, 25),
    fontWeight: FontWeight.bold,
    fontFamily: 'Signika',
    color: kAppTealColor,
  );
}
