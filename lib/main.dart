import 'package:flutter/material.dart';
import 'package:flutter_skills_enhancement/theme.dart';
import 'package:flutter_skills_enhancement/home_page.dart';

bool isDarkTheme = false; // Initially set to light theme

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkTheme ? darkTheme : lightTheme,
      home: const MyHomePage(title: 'Le bac à sable de Séra'),
    );
  }
}

// Rest of your code in main.dart