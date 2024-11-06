import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/router/route.constants.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunctions.isDarkMode(context);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
        context, RouteConstants.menuScreen, (route) => false,
      ));
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.brandName,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: isDark ? AppColors.white : AppColors.black
            ),
          ),
        ],
      ),
    );
  }
}
