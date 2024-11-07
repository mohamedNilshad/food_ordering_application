import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foa/src/core/constants/app_colors.dart';

class CSvgIconBuilder extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final Color? color;

  const CSvgIconBuilder({
    super.key,
    required this.icon,
    this.isSelected = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor;
    if(color == null) {
      iconColor = isSelected ? AppColors.selectedIcon : AppColors.lightUnSelectedIcon;
    } else{
      iconColor = color!;
    }
    return SvgPicture.asset(
      icon,
      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
    );
  }
}
