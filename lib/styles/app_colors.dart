import 'package:flutter/material.dart';

class AppColors {
  static const Color darkBlue = Color(0xFF212C4F);
  static const Color blue = Color(0xFF3672F8);
  static const Color lightBlue = Color(0xFFC6D0EB);
  static const Color grey = Color(0x99EBEBF5);
  static const Color lightGrey = Color(0xFFF0F3F5);
  static const Color lightGreen = Color(0xFF205284);
  static const Color black = Color(0xFF000000);
  static const Color purple = Color(0xFF7B42F6);
  static const Color violet = Color(0xFFB01EFF);
  static const Color pink = Color(0xFFE1467C);
  static const Color lightPink = Color(0xFFFF1FCE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color purpleShadow = Color(0xFF452A7C);
  static const Color primary = Color(0xFF3913B8);
  static const Color backGround = Color(0xFF2B2B52);

  static LinearGradient backGroundGradient = LinearGradient(
    colors: [
      const Color(0xFFFFFFFF).withOpacity(0.4), // Start color
      const Color(0xFFFFFFFF).withOpacity(0.07), // End color
    ],
    stops: const [0.0, 1.0], // Positions of the colors
    begin: Alignment.topLeft,

    end: Alignment.bottomRight,
  );

  static const LinearGradient gradient1 = LinearGradient(
    colors: [
      Color(0xFF7B42F6), // Start color
      Color(0xFFB01EFF), // End color
    ],
    stops: [0.0, 1.0], // Positions of the colors
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient gradient2 = LinearGradient(
    colors: [
      Color(0xFFB01EFF), // Start color
      Color(0xFFE1467C), // End color
    ],
    stops: [0.0, 1.0], // Positions of the colors
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient gradient3 = LinearGradient(
    colors: [
      Color(0xFF3672F8), // Start color
      Color(0xFFB01EFF), // End color
    ],
    stops: [0.0, 1.0], // Positions of the colors
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient gradient4 = LinearGradient(
    colors: [
      Color(0xFF14F1D9), // Start color
      Color(0xFF3672F8), // End color
    ],
    stops: [0.0, 1.0], // Positions of the colors
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
