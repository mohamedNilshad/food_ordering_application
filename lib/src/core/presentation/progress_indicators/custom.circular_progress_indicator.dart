import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class CCircularProgressIndicator extends StatelessWidget {
  final double radius;
  final Color color;
  const CCircularProgressIndicator({super.key, this.radius = Sizes.buttonHeight, this.color = AppColors.primary});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: radius,
        width: radius,
        alignment: Alignment.center,
        child: CircularProgressIndicator(color: color),
      ),
    );
  }
}
