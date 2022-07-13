import 'package:flutter/material.dart';

class PaddingConstants{
  static PaddingConstants instance = PaddingConstants._init();

  final LowPad= EdgeInsets.all(24.0);
  final MediumPad= EdgeInsets.all(36.0);
  final BigPad= EdgeInsets.all(100.0);


  PaddingConstants._init();
}

class ColorConstants{
  static ColorConstants instance = ColorConstants._init();

  final TitanicYellow = Color(0xffFFE600);
  final TransparantWhite = Color(0x8bffffff);
  final ColorWhite = Color(0xffffffff);
  final YellowBig = Color(0xffd49800);


  ColorConstants._init();
}

class RadiusConstants{
  static RadiusConstants instance = RadiusConstants._init();
  final ovalRad=BorderRadius.circular(360);
  RadiusConstants._init();
}

class ColorGradientConstants{
  static ColorGradientConstants instance = ColorGradientConstants._init();

  final WhiteTransparant = LinearGradient(begin: Alignment.topLeft, end: Alignment(3, 0.0), colors: [Color(
      0x66ffffff),Color(0x1affffff)]);


  ColorGradientConstants._init();
}