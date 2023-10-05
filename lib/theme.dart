import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.deepOrange, // The main color for your app
  scaffoldBackgroundColor: Colors.white, // Background color for the scaffold
  appBarTheme: const AppBarTheme(
      color: Colors.deepOrange, // Background color of app bar
    iconTheme: IconThemeData(color: Colors.white), // Color of icons in app bar
    titleTextStyle: TextStyle(
      color: Colors.white, // Default text color for the body
      fontSize: 26.0,
      fontWeight: FontWeight.w700,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black, // Default text color for the body
      fontSize: 16.0,
    ),
    // Define more text styles as needed
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange, // Background color for the FloatingActionButton
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrange, // Background color for ElevatedButton
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.deepOrange, // Text color for OutlinedButton
      splashFactory: NoSplash.splashFactory, // Remove the splash effect
    ),
  ),
  // Add more theme properties as needed
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple, // Background color of app bar
    iconTheme: IconThemeData(color: Colors.white), // Color of icons in app bar
    titleTextStyle: TextStyle(
      color: Colors.white, // Default text color for the body
      fontSize: 6.0,
      fontWeight: FontWeight.w700,
    ),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 6.0,
    ),
    // Define more text styles as needed
  ),
  // Add more theme properties as needed
);
