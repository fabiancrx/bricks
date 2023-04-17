import 'package:flutter/material.dart';

abstract class {{short_name.pascalCase()}}TextStyle {
  static const fontFamily = 'Poppins';

  // Custom text theme overriding material 3 properties.
  // This class has few implemented styles and by default is not applied to the theme.
  static final textTheme = TextTheme(
    displayLarge: display,
    displayMedium: display,
    displaySmall: display,
    headlineLarge: headline,
    headlineMedium: headline,
    headlineSmall: headline,
    titleLarge: title,
    titleMedium: title,
    titleSmall: title,
    labelLarge: label,
    labelMedium: label,
    labelSmall: label,
    bodyLarge: body,
    bodyMedium: body,
    bodySmall: body,
  );

  /// Base Text Style
  static const _default = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Display Text Style
  static final TextStyle display = _default.copyWith(
    fontSize: 57,
    fontWeight: FontWeight.bold,
    height: 1.12,
    letterSpacing: -0.25,
  );
  static final TextStyle body = _default.copyWith(fontSize: 14, fontWeight: FontWeight.w400);
  static final TextStyle title = _default.copyWith(fontSize: 28, fontWeight: FontWeight.w400);
  static final TextStyle label = _default.copyWith(fontSize: 20, fontWeight: FontWeight.w400);

  static final TextStyle headline = _default.copyWith(fontSize: 35, fontWeight: FontWeight.w700);
}
