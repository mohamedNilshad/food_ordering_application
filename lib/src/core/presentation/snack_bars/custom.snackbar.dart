import 'package:foa/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

ScaffoldFeatureController customSnackBar(BuildContext context, String msg,
    {double height = 30, Color backgroundColor = AppColors.error,
      Duration duration = const Duration(milliseconds: 4000), SnackBarAction? actionButton}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  final snackBar = SnackBar(
    backgroundColor: backgroundColor,
    content: Text(
      msg,
      style: const TextStyle(
        color: AppColors.white,
      ),
    ),
    duration: (actionButton != null) ? const Duration(minutes: 1) : duration,
    action: actionButton,
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}