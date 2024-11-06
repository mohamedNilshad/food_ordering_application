import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final int duration;
  const ShimmerLoading({super.key, required this.width, required this.height, this.radius = 0, this.duration = 1});

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: isDark ? AppColors.baseColorDark :AppColors.baseColorLight,
      highlightColor: AppColors.highlightColor,
      period: Duration(seconds: duration),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: AppColors.white,
        ),
      ),
    );
  }
}
