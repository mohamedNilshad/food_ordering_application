import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// App Basic Colors
  static const Color primary = Color(0xFF1CAE81);
  static const Color secondary = Color(0xff5e66e0);
  static const Color accent = Color(0xFFFFB200);

  ///Gradient Colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        AppColors.softGrey,
        AppColors.lightGrey,
      ]
  );

  ///Gradient Colors
  static Gradient overLayerGradient = LinearGradient(
      begin: Alignment.bottomCenter,  // Start at the bottom
      end: Alignment.topCenter,
      colors: [
        Colors.black,
        Colors.black.withOpacity(0),
      ]
  );

  static const List<Color> gradientBackgroundColor = [
    Color(0xFF1CAE81), // Start color
    Color(0xFF32944c), // 2nd color
    Color(0xFF48cf6c), // 3rd color
    Color(0xFF32944c),  // 4th color
    Color(0xFF77d48f), // End color
  ];

  /// Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = AppColors.white;

  /// Icons Colors
  static const Color selectedIcon = AppColors.primary;
  static const Color lightUnSelectedIcon = AppColors.darkerGrey;
  static const Color darkUnSelectedIcon = AppColors.softGrey;

  /// Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  /// Background Containers Colors
  static const Color lightContainers = Color(0xFFF6F6F6);
  static Color darkContainers = AppColors.white.withOpacity(0.1);
  static const Color darkTabBg = Color(0xFF302c34);


  /// Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonGreen = Color(0xFF139c40);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFF939393);
  static const Color selectedTabColor = Color(0xFFEBEFF8);

  /// Border Colors
  static const Color borderPrimary = Color(0xFF090909);
  static const Color borderSecondary = Color(0xFFE6E6E6);
  static const Color borderGrey = Color(0xFFE8E8E8);

  /// Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  /// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  ///shimmer loading
  static const Color baseColorLight = Color(0xFFE0E0E0);
  static const Color baseColorDark = Color(0xFF939393);
  static const Color highlightColor = Color(0xFFF5F5F5);


}