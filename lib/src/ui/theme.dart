import 'dart:ui';

import 'package:flutter/material.dart';

///For easier copy-paste
//Blau
//  345995
//
//Hellblau
//  bfdbf7
//
//Gelb
//  fcf15c
//
//Rot
//  d22422
//
//Hell
//  eff9f0
//
//Dunkel
//  1c110a

ThemeData basicTheme() {
  //new colors
  Color blue = Color(0xFF2D9CDB);
  Color yellow = Color(0xFFFCF15C);
  //old colors from lotto app
  Color dark = Color(0xff1c110a);
  Color light = Color(0xffeff9f0);
  Color lottoYellowLight = Color(0xffffff8f);
  Color lottoYellowDark = Color(0xff7b7800);
  Color winningBlue = Color(0xff345995);
  Color blueLight = Color(0xffbfdbf7);

  TextTheme _primaryTextTheme(TextTheme base) {
    return base.copyWith(
      subhead: base.title.copyWith(
        color: dark,
      ),
      display1: base.headline.copyWith(
        color: dark,
      ),
      body1: base.body1.copyWith(
        color: dark,
      ),
    );
  }

  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      body1: base.body1.copyWith(
        fontSize: 18,
        color: dark,
      ),
      display1: base.display1.copyWith(
        color: light,
      ),
      display2: base.headline.copyWith(
        color: blueLight,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: yellow,
    primaryColor: blue,
    primaryColorDark: lottoYellowDark,
    primaryColorBrightness: Brightness.light,
    indicatorColor: winningBlue,
    buttonColor: lottoYellowLight,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: lottoYellowLight,
      textTheme: ButtonTextTheme.normal,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: blue,
      foregroundColor: dark,
    ),
    scaffoldBackgroundColor: light,
    primaryTextTheme: _primaryTextTheme(base.textTheme),
    textTheme: _basicTextTheme(base.textTheme),
    sliderTheme: SliderThemeData(
      trackHeight: 1,
    ),
  );
}
