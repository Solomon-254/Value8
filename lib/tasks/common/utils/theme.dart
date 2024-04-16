import 'package:flutter/material.dart';

final ThemeData modernTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.teal,
  fontFamily: 'Poppins',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade100,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
  ),
  textTheme: const TextTheme(
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      fontSize: 16.0,
    ),
  ),
);




 

extension Util on BuildContext {
  ColorScheme colors() {
    return Theme.of(this).colorScheme;
  }

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }

  double fullWidth() {
    return MediaQuery.of(this).size.width;
  }
}