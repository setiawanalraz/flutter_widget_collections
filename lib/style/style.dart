import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle title = GoogleFonts.poppins(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

TextStyle subTitle = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

BoxDecoration customBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(0xff0096ff), Color(0xff6610f2)],
    begin: FractionalOffset.topLeft,
    end: FractionalOffset.bottomRight,
  ),
);

BoxDecoration loginBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(0xff0096ff), Color(0xff6610f2)],
    begin: FractionalOffset.topLeft,
    end: FractionalOffset.topRight,
  ),
);
