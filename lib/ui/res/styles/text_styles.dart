
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class JlTextStyles {
  static const _light = FontWeight.w300;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;
  static const _bolder = FontWeight.w800;
  static const _black = FontWeight.w900;

  static const TextStyle textLight = TextStyle(
    fontWeight: _light,
  );

  static const TextStyle textNormal = TextStyle(
    fontWeight: _regular,
  );

  static const TextStyle textMedium = TextStyle(
    fontWeight: _medium,
  );

  static const TextStyle textSemiBold = TextStyle(
    fontWeight: _semiBold,
  );

  static const TextStyle textBold = TextStyle(
    fontWeight: _bold,
  );

  static const TextStyle textBolder = TextStyle(
    fontWeight: _bolder,
  );

  static const TextStyle textBlack = TextStyle(
    fontWeight: _black,
  );

  static final TextStyle h1 = GoogleFonts.plusJakartaSans(
      textStyle: textMedium, fontSize: 36);

      static final TextStyle h1Bold = GoogleFonts.workSans(
      textStyle: textBold, fontSize: 36); 
      static final TextStyle h0Bold = GoogleFonts.workSans(
      textStyle: textBold, fontSize: 48);
  // textMedium.copyWith();

  static final TextStyle h2 = GoogleFonts.plusJakartaSans(
      textStyle: textMedium, fontSize: 28);

  static final TextStyle h2Medium = GoogleFonts.plusJakartaSans(
      textStyle: textMedium, fontSize: 28);
     static final TextStyle h2Bold = GoogleFonts.plusJakartaSans(
      textStyle: textBold, fontSize: 28);
      
  static final TextStyle h3 = GoogleFonts.workSans(
      textStyle: textNormal, fontSize: 22);

  static final TextStyle h3Medium = GoogleFonts.workSans(
      textStyle: textMedium, fontSize: 22);

  static final TextStyle h3Bold = GoogleFonts.workSans(
      textStyle: textBold, fontSize: 22);

       static final TextStyle h35Bold = GoogleFonts.workSans(
      textStyle: textBold, fontSize: 20);

  static final TextStyle h4 = GoogleFonts.workSans(
      textStyle: textNormal, fontSize: 18);

  static final TextStyle h4Medium = GoogleFonts.workSans(
      textStyle: textMedium, fontSize: 18);

  static final TextStyle h4Bold = GoogleFonts.workSans(
      textStyle: textBold, fontSize: 18);

  static final TextStyle h5 = GoogleFonts.workSans(
      textStyle: textNormal,
      height: 1.4,
      textBaseline: TextBaseline.ideographic,
      fontSize: 16);
      

static final TextStyle h5Medium = GoogleFonts.workSans(
      textStyle: textMedium,
      height: 1.4,
      textBaseline: TextBaseline.ideographic,
      fontSize: 16);

  static final TextStyle h5SemiBold = GoogleFonts.workSans(
      textStyle: textSemiBold,
      height: 1.4,
      textBaseline: TextBaseline.ideographic,
      fontSize: 16);
      
  static final TextStyle h5Bold = GoogleFonts.workSans(
      textStyle: textBold,
      height: 1.4,
      textBaseline: TextBaseline.ideographic,
      fontSize: 16);

  static final TextStyle h6 = GoogleFonts.roboto(
      textStyle: textNormal, fontSize: 15);

  static final TextStyle h6Medium = GoogleFonts.roboto(
      textStyle: textMedium, fontSize: 14);

  static final TextStyle p1 = GoogleFonts.quicksand(
      textStyle: textNormal, fontSize: 20);
  static final TextStyle p1Medium = GoogleFonts.workSans(
      textStyle: textMedium, fontSize: 20);

  static final TextStyle p2 = GoogleFonts.quicksand(
      textStyle: textNormal, fontSize: 18);

  static final TextStyle p3 = GoogleFonts.quicksand(
      textStyle: textNormal, fontSize: 13);
  static final TextStyle p3Medium = GoogleFonts.workSans(
      textStyle: textMedium, fontSize: 13);

  static final TextStyle button = GoogleFonts.plusJakartaSans(
      textStyle: textMedium, fontSize: 16);

  static final TextStyle buttonSmall = GoogleFonts.plusJakartaSans(
      textStyle: textNormal, fontSize: 14);


  static final TextStyle caption = GoogleFonts.roboto(
      textStyle: textMedium, fontSize: 12);

  static final TextStyle captionMedium = GoogleFonts.roboto(
      textStyle: textNormal, fontSize: 12);

  
  // static const TextStyle textSize12 = TextStyle(
  //   fontSize: 12,
  // );
  // static const TextStyle textSize16 = TextStyle(
  //   fontSize: 16,
  // );
  // static const TextStyle textBold14 =
  //     TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  // static const TextStyle textBold16 =
  //     TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  // static const TextStyle textBold18 =
  //     TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  // static const TextStyle textBold24 =
  //     TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  // static const TextStyle textBold26 =
  //     TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold);

  

  // static const TextStyle textWhite14 = TextStyle(
  //   fontSize: 14,
  //   color: Colors.white,
  // );

  
}
