import 'package:flutter/material.dart';

final ThemeData customAppTheme = _buildAppTheme();

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    title: base.title.copyWith(
      fontFamily: 'GoogleSans',
    ),
  );
}

ThemeData _buildAppTheme() {
  const Color primaryColor = Color(0xfff7c873);
  const Color secondaryColor = Color(0xfffffba3);
  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );
  final ThemeData base = ThemeData(
    brightness: Brightness.dark,
    accentColorBrightness: Brightness.dark,
    primaryColor: primaryColor,
    primaryColorDark: const Color(0xffc29745),
    primaryColorLight: const Color(0xfffffba3),
    buttonColor: primaryColor,
    indicatorColor: Colors.white,
    toggleableActiveColor: primaryColor,
    accentColor: Color(0xff434343),
    canvasColor: const Color(0xFF202424),
    scaffoldBackgroundColor: const Color(0xFF282124),
    backgroundColor: const Color(0xFF203124),
    errorColor: const Color(0xFFB00020),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
  );
}