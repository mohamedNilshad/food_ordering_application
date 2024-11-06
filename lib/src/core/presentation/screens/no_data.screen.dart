import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EmptyDataScreen extends StatelessWidget {
  final IconData icon;
  final String text;
  const EmptyDataScreen({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunctions.isDarkMode(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: isDark ? AppColors.white : AppColors.black
            ),
          )
        ],
      ),
    );
  }
}
