import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarTextStyle: TextStyle(
          color: Colors.black,
        ),
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(brightness: Brightness.dark);
  }
}
