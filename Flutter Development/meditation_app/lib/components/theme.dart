import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
      fontFamily: 'Roboto-Mono',
      appBarTheme: appBarTheme,
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
        bodyText1: TextStyle(
            color: kBodyTextColorLight, fontFamily: 'Poppins-Regular'),
        bodyText2: TextStyle(
            color: kBodyTextColorLight, fontFamily: 'Poppins-Regular'),
        headline4: TextStyle(
            color: kTitleTextLightColor,
            fontSize: 32,
            fontWeight: FontWeight.w900,
            fontFamily: 'Poppins-ExtraBold'),
        headline1: TextStyle(
            color: kTitleTextLightColor,
            fontSize: 80,
            fontFamily: 'Poppins-ExtraBold'),
        headline6: TextStyle(
          color: kTitleTextLightColor,
          fontSize: 15,
          fontWeight: FontWeight.normal,
          fontFamily: 'Poppins-ExtraBold',
        ),
        headline5: TextStyle(
            color: kTitleTextLightColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins-ExtraBold',
            letterSpacing: 2.0,
            fontSize: 17),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
      ));
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      accentColor: kAccentDarkColor,
      scaffoldBackgroundColor: Color(0xFF0D0C0E),
      appBarTheme: appBarTheme,
      colorScheme: ColorScheme.light(
        secondary: kSecondaryDarkColor,
        surface: kSurfaceDarkColor,
      ),
      backgroundColor: kBackgroundDarkColor,
      iconTheme: IconThemeData(color: kBodyTextColorDark),
      accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
      primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
      textTheme: GoogleFonts.robotoMonoTextTheme().copyWith(
        bodyText1: TextStyle(
            color: kBodyTextColorDark, fontFamily: 'Poppins-ExtraBold'),
        bodyText2: TextStyle(
            color: kBodyTextColorDark, fontFamily: 'Poppins-ExtraBold'),
        headline4: TextStyle(
            color: kTitleTextDarkColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins-ExtraBold'),
        headline1: TextStyle(
            color: kTitleTextDarkColor,
            fontSize: 80,
            fontFamily: 'Poppins-ExtraBold'),
        headline6: TextStyle(
          color: kTitleTextDarkColor,
          fontSize: 15,
          fontWeight: FontWeight.normal,
          fontFamily: 'Poppins-ExtraBold',
        ),
        headline5: TextStyle(
            color: kTitleTextDarkColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins-ExtraBold',
            letterSpacing: 2.0,
            fontSize: 17),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        backgroundColor: Colors.transparent,
      ));
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
