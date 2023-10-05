import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:flutter_skills_enhancement/home_page.dart';
import 'package:flutter_skills_enhancement/theme.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: const MyHomePage(
          title: 'Le bac à sable de Séra',
        ),
      ),
    );
  }
}