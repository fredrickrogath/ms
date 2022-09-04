import 'package:flutter/material.dart';

const lightBackgroundColor = Color(0xFFECECEC);

const mainColor = Color(0XFF996515);

const iconColor = Colors.grey;

const starColor = Colors.grey;

final lightTheme = ThemeData(
  backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: lightBackgroundColor,
  typography: Typography.material2018(),
  textTheme: TextTheme(
    headline4: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 34.0,
      color: Colors.black.withOpacity(0.75),
    ),
    headline5: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24.0,
      color: Colors.black.withOpacity(0.65),
    ),
    headline6: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 20.0,
      color: Colors.black.withOpacity(0.65),
    ),
    subtitle1: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16.0,
      color: Colors.black.withOpacity(0.65),
    ),
    bodyText1: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 14.0,
      color: Colors.black.withOpacity(0.65),
    ),
    bodyText2: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14.0,
      color: Colors.black.withOpacity(0.65),
    ),
  ),
);

const darkColor = Color.fromARGB(255, 1, 31, 15);
const minDarkColor = Color.fromARGB(255, 1, 78, 37);
const midColor = Color.fromARGB(255, 2, 56, 27);
const minMidColor = Color.fromARGB(255, 1, 72, 34);
const lightColor = Color.fromARGB(255, 12, 93, 50);
var green1 = const Color(0xFF337A6F);
var green2 = const Color(0xFF337A6F);
var green3 = const Color(0xFF337A6F);

const greenGradient = LinearGradient(
    colors: [darkColor, midColor, lightColor],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

var indicatorGradient = LinearGradient(
    colors: [green1, green2, green3],
    stops: const [0.0, 0.5, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

const greenGradientBottom = LinearGradient(
    colors: [midColor, midColor, darkColor],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

const greetingTitleStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white);

const greetingSubtitleStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white);

// SCREEN SIZE
// var screenHeight = MediaQuery.of(context).size.height;
