import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle extends TextStyle {
  const CustomTextStyle({
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
    double letterSpacing = 3.0,
    double wordSpacing = 0.0,
  }) : super(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    fontFamily: 'Poppins',
  );
}

TextStyle poppinsStyle({
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.black,
  double letterSpacing = 0.0,
  double wordSpacing = 0.0,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
  );
}
