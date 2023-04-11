import 'package:{{package_name.snakeCase()}}/{{short_name.snakeCase()}}.dart';
import 'package:flutter/material.dart';
import 'package:material_playground/material_playground.dart';

void main() => runApp(const DemoApp());

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  ThemeMode themeMode = ThemeMode.system;

  void _changeThemeMode(ThemeMode mode) {
    setState(() {
      themeMode = mode;
    });
  }
  const theme = {{short_name.pascalCase()}}Theme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Copy Playground',
      theme: theme.light,
      darkTheme: theme.dark,
      themeMode: themeMode,
      home: MaterialPlayground(themeMode: themeMode, onThemeModeChanged: _changeThemeMode),
    );
  }
}
