import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color background_color = Color(0xFF1F2632);
Color contaier_color = Color.fromRGBO(50, 58, 73, 1);
Color text_color1 = Color(0xFF52FFA8);
Color text_color2 = Color(0xFFCEE3E9);

TextStyle head_font = GoogleFonts.getFont("Josefin Sans",
    textStyle: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: text_color1,
        letterSpacing: 4.0));
TextStyle subhead_font = GoogleFonts.getFont("Josefin Sans",
    textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: text_color1,
        letterSpacing: 4.0));
TextStyle type_font = GoogleFonts.getFont("Manrope",
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: text_color2,
    )); //CEE3E9
TextStyle options_font = GoogleFonts.getFont("Manrope",
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ));
