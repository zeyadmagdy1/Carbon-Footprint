import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor =
      const Color.fromARGB(255, 42, 122, 45); // Green color

  static ThemeData mainTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white, // Color when selected
        unselectedItemColor: Colors.black, // Color when unselected
        backgroundColor: primaryColor, // Green background color
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontSize: 22)));
}
