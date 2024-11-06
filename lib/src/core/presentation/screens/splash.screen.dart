import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/router/route.constants.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
        context, RouteConstants.menuScreen, (route) => false,
      ));
    });
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: HelperFunctions.screenHeight(context),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: AppColors.gradientBackgroundColor,
          ),
        ),
        child: Center(
          child: Text(
            AppStrings.brandName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.w900,
              color: AppColors.white
            ),
          ),
        ),
      ),
    );
  }
}
