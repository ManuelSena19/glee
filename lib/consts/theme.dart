import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.alegreyaSansTextTheme(),
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: const Color.fromRGBO(174, 175, 247, 1),
      onPrimary: const Color.fromRGBO(55, 27, 52, 1),
      secondary: const Color.fromRGBO(239, 93, 168, 1),
      onSecondary: const Color.fromRGBO(240, 158, 84, 1),
      tertiary: const Color.fromRGBO(160, 227, 226, 1),
      onTertiary: const Color.fromRGBO(239, 93, 168, 150),
      surface: Colors.white,
      primaryFixed: const Color.fromRGBO(237, 230, 252, 1),
      secondaryFixed: const Color.fromRGBO(240, 158, 84, 150),
    ),
  );
}