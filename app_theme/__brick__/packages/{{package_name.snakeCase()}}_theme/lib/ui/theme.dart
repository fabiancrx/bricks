import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';


import 'colors.dart';
import 'typography.dart';

class {{short_name.pascalCase()}}Theme {
  const {{short_name.pascalCase()}}Theme();

  // Made for FlexColorScheme version 7.0.0+.
  // Refer to https://docs.flexcolorscheme.com/ for documentation
  ThemeData get light => _postProcess(FlexThemeData.light(
        colors: _appFlexScheme.light,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        onPrimary: Colors.white,
        scaffoldBackground: {{short_name.pascalCase()}}Color.scaffold,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useM2StyleDividerInM3: true,
          defaultRadius: 10,
          drawerBackgroundSchemeColor: SchemeColor.primaryContainer,
          outlinedButtonOutlineSchemeColor: SchemeColor.primary,
          fabSchemeColor: SchemeColor.primary,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: {{short_name.pascalCase()}}TextStyle.fontFamily,
      ));

  ThemeData get dark => _postProcess(FlexThemeData.dark(
        colors: _appFlexScheme.dark,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        onPrimary: Colors.white,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useM2StyleDividerInM3: true,
          defaultRadius: 10,
          drawerBackgroundSchemeColor: SchemeColor.primaryContainer,
          outlinedButtonOutlineSchemeColor: SchemeColor.primary,
          fabSchemeColor: SchemeColor.primary,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: {{short_name.pascalCase()}}TextStyle.fontFamily,
      ));

  // Some tweaks needed after the theme generation
  ThemeData _postProcess(ThemeData theme) => theme.copyWith(
        useMaterial3: true,
        cardTheme:
            theme.cardTheme.copyWith(color: theme.colorScheme.surface, surfaceTintColor: theme.colorScheme.surface),
        inputDecorationTheme: theme.inputDecorationTheme.copyWith(
          enabledBorder: theme.inputDecorationTheme.enabledBorder?.copyWith(
            borderSide: const BorderSide(color: {{short_name.pascalCase()}}Color.inputUnfocused),
          ),
        ),
      );
}

const FlexSchemeData _appFlexScheme = FlexSchemeData(
  name: '{{short_name.pascalCase()}}',
  description: '{{short_name.pascalCase()}} custom  theme',
  light: FlexSchemeColor(
    primary: {{short_name.pascalCase()}}Color.primary,
    primaryContainer: {{short_name.pascalCase()}}Color.container,
    appBarColor: {{short_name.pascalCase()}}Color.container,
    secondary: {{short_name.pascalCase()}}Color.secondary,
    secondaryContainer: {{short_name.pascalCase()}}Color.container,
  ),
  dark: FlexSchemeColor(
    primary: {{short_name.pascalCase()}}Color.primary,
    primaryContainer: {{short_name.pascalCase()}}Color.container,
    secondary: {{short_name.pascalCase()}}Color.container,
    secondaryContainer: {{short_name.pascalCase()}}Color.secondary,
  ),
);

