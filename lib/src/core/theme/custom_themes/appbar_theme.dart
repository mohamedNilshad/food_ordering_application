import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';

class CAppBarTheme{
  CAppBarTheme._();

  ///light theme
  static const lightAppBarThemeTheme =  AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: AppColors.black, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.black),
  );

  ///dark theme
  static const darkAppBarThemeTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.white, size: 24.0),
    actionsIconTheme: IconThemeData(color: AppColors.white, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.white),
  );
}