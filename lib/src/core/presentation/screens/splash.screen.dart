import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/provider/load_data.provider.dart';
import 'package:foa/src/core/router/route.constants.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> _fetchResults() async {
    try {
      context.read<LoadDataProvider>().loadData(context).then((v) {
        Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
          context, RouteConstants.menuScreen, (route) => false,
        ));
      });
    } catch(e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    print(context.read<LoadDataProvider>().res);
    Future.microtask(() => _fetchResults());
  }

  @override
  Widget build(BuildContext context) {

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
