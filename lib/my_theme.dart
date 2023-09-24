import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color primary = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);

  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.bold,color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.bold,color: blackColor)
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
  static ThemeData darkTheme = ThemeData();


}