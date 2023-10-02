import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color primary = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primary,
          onPrimary: Colors.white,
          secondary: blackColor,
          onSecondary: Colors.grey,
          error: Colors.red,
          onError: Colors.black26,
          background: Colors.brown,
          onBackground: Colors.amberAccent,
          surface: Colors.white30,
          onSurface: Colors.black87),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.bold,color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.bold,color: blackColor),
        bodySmall: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.bold,color: blackColor),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: blackColor
        ),
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    )
  );
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkPrimary,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.grey,
          error: Colors.red,
          onError: Colors.black26,
          background: Colors.brown,
          onBackground: Colors.amberAccent,
          surface: Colors.white30,
          onSurface: Colors.black87),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.bold,color: yellowColor),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
      )
  );
}