import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTypography {
  static final nameLarge = GoogleFonts.inter().copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static final button = GoogleFonts.inter().copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static final textIn = GoogleFonts.inter().copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    fontFamily: 'Inter',
  );
  static final textGoole = GoogleFonts.inter().copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );
  static final textFB = GoogleFonts.inter().copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );
  static final largeText = GoogleFonts.inter().copyWith(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
  );

  static final splashScreenText = GoogleFonts.inter().copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inknut Antiqua',
  );
}
