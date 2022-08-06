import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepOrange,
        backgroundColor: Colors.white,
        fontFamily: GoogleFonts.oswald().fontFamily,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold)),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepOrange,
        backgroundColor: Color(0xFF0B0015),
        fontFamily: GoogleFonts.oswald().fontFamily,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF0B0015),
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold)),
      );
}
