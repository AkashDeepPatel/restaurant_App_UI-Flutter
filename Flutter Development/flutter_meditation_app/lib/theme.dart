import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    bottomAppBarTheme: bottomAppBarTheme,
    primaryColor: kPrimaryColor,
    accentColor: kAccentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryLightColor,
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    accentIconTheme: IconThemeData(color: kAccentIconLightColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorLight),
      bodyText2: TextStyle(color: kBodyTextColorLight),
      headline4: TextStyle(
          color: kTitleTextLightColor,
          fontSize: 32,
          fontWeight: FontWeight.bold),
      headline1: TextStyle(color: kTitleTextLightColor, fontSize: 80),
      headline6: TextStyle(color: kTitleTextLightColor, fontSize: 15),
      headline5:
          TextStyle(color: kTitleTextLightColor, fontWeight: FontWeight.bold),
    ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    accentColor: kAccentDarkColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    bottomAppBarTheme: bottomAppBarTheme,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
    ),
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorDark),
      bodyText2: TextStyle(color: kBodyTextColorDark),
      headline4: TextStyle(
          color: kTitleTextDarkColor,
          fontSize: 32,
          fontWeight: FontWeight.bold),
      headline1: TextStyle(color: kTitleTextDarkColor, fontSize: 80),
      headline6: TextStyle(color: kTitleTextDarkColor, fontSize: 15),
      headline5:
          TextStyle(color: kTitleTextDarkColor, fontWeight: FontWeight.bold),
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
BottomAppBarTheme bottomAppBarTheme =
    BottomAppBarTheme(color: Colors.transparent, elevation: 0.0);
