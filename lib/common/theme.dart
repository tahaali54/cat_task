import 'package:flutter/material.dart';

class CatColors {
  static const Color accent = Color(0xFFFF6F43);
  static const Color highEmphasisSurface = Color(0xDE000000);
  static const Color mediumEmphasisSurface = Color(0x99000000);
  static const Color highEmphasisAccent = Colors.white;
  static const Color outline = Color(0xFFE0E0E0);

  static const LinearGradient lightAccentReversedGradient = LinearGradient(
    stops: [0.0, 1.0],
    colors: [
      Colors.white,
      Color(0xFFFBE9E7),
    ],
  );
  static const LinearGradient accentReversedGradient = LinearGradient(
    stops: [0.0, 1.0],
    colors: [
      Color(0xFFFFAB91),
      accent,
    ],
  );
  static const LinearGradient outlineReversedGradient = LinearGradient(
    stops: [0.0, 1.0],
    colors: [
      Color(0x00E0E0E0),
      outline,
    ],
  );
  static const LinearGradient outlineGradient = LinearGradient(
    stops: [0.0, 1.0],
    colors: [
      outline,
      Color(0x00E0E0E0),
    ],
  );
}

class CatTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: CatColors.highEmphasisSurface,
  );

  static const TextStyle title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CatColors.highEmphasisSurface,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: CatColors.mediumEmphasisSurface,
  );

  static const TextStyle accentButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: CatColors.highEmphasisAccent,
  );

  static const TextStyle surfaceButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: CatColors.highEmphasisSurface,
  );
}
