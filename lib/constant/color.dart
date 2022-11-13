import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF1C1917);
  static const Color textFormFieldBgColor = Color(0xFFF2F4F7);
  static const Color searchIconColor = Color(0xFF667085);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color containerBorderColor = Color(0xFFA9B8D5);
  static const Color containerBgColor = Color(0xFFFCFCFD);
  static const Color containerBoxShadowRgba = Color.fromRGBO(16, 24, 40, 0.05);
  static const Color yellowColor = Color(0xFFFF6C00);
}

class MyTheme {
  static final darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      scaffoldBackgroundColor: Colors.black,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 117, 117))),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blueGrey,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      colorScheme: const ColorScheme.dark(
        secondary: Colors.white,
        primary: Color(0xFF98A2B3),
      ),
      textTheme: TextTheme(
        button: const TextStyle(color: Colors.grey),
        bodyText1: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFF2F4F7)),
        bodyText2: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF98A2B3),
        ),
        headline3: GoogleFonts.pacifico(
            fontSize: 38.sp, fontWeight: FontWeight.w400, color: Colors.white),
      ));

  static final lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
          secondary: Colors.black, primary: Color(0xFFF2F4F7)),
      iconTheme: const IconThemeData(color: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 189, 189, 189))),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.green,
      ),
      textTheme: TextTheme(
        button: const TextStyle(color: Colors.orange),
        bodyText1: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF1C1917),
        ),
        bodyText2: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF667085),
        ),
        headline3: GoogleFonts.pacifico(
            fontSize: 35.sp, fontWeight: FontWeight.w400, color: Colors.black),
      ));
}
