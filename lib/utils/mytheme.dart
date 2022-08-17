import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/hex_colors.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Palette.kToDark,
        backgroundColor: Color(040606),
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.oswald().fontFamily,
      );
}
