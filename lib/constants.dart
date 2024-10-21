import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const blueE = Color(0xFF138ed5);
const grey1 = Color(0xFF9F9F9F);
const grey2 = Color(0xFF6D6D6D);
const grey3 = Color(0xFFEAEAEA);
const black = Color(0xFF1C1C1C);

var nonActiveTabStyle = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 16.0,
    color: grey1,
  ),
);

var activeTabStyle = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 16.0,
    color: black,
    fontWeight: FontWeight.bold,
  ),
);

var categoryTitle = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 14.0,
    color: grey2,
    fontWeight: FontWeight.bold,
  ),
);

var detailContent = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 14.0,
    color: grey2,
    // fontWeight: FontWeight.bold,
  ),
);

var cardTitle = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 17.0,
    color: black,
    fontWeight: FontWeight.bold,
  ),
);

var descriptionStyle = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 15.0,
    height: 2.0,
  ),
);
