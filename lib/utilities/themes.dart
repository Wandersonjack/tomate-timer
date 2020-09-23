import 'package:flutter/material.dart';
import 'styles_utilities.dart';



final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme(){
  final ThemeData base = ThemeData();
  return base.copyWith(
    primaryColor: kPrimaryColor,
    textTheme: _buildTextTheme(base.textTheme),
  );
}


TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        subtitle1: base.subtitle1.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        headline1: base.headline1.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 48,
        ),
        headline2: base.headline2.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 32,
        ),
        headline3: base.headline3.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 24
        ),
      )
      .apply(
        fontFamily: 'SF Compact Display',
      );
}
