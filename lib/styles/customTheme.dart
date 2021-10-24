import 'package:flutter/material.dart';
// import './colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyles {
  // TextStyle fontWhite
  // print('Hello');

  Color lotus = Color.fromRGBO(11, 176, 169, 1);
  Color tesco = Color.fromRGBO(22, 153, 103, 1);
  Color green1 = Color.fromRGBO(36, 206, 133, 1.0);
  ThemeData customThemeData() => ThemeData(
      brightness: Brightness.light,
      primaryColor: green1,
      backgroundColor: lotus,
      fontFamily: GoogleFonts.nunito().fontFamily,
      textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 14.0,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
          headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          button: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)));
}
