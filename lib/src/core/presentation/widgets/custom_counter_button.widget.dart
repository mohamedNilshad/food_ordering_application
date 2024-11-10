import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';

class CCounterButton extends StatelessWidget {
  final int count;
  final EdgeInsets buttonPadding;
  final EdgeInsets labelPadding;
  final double fontSize;
  final Function onIncrease;
  final Function onDecrease;

  const CCounterButton({
    super.key,
    required this.count,
    this.buttonPadding = const EdgeInsets.symmetric(vertical: Sizes.md, horizontal: Sizes.lg),
    this.labelPadding = const EdgeInsets.symmetric(horizontal: Sizes.lg),
    this.fontSize = 16.0,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: buttonPadding,
      decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(Sizes.borderRadiusMd)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => onDecrease(),
            child: const Icon(Icons.remove, color: AppColors.primary),
          ),
          Padding(
            padding: labelPadding,
            child: Text(
              '$count',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onIncrease(),
            child: const Icon(Icons.add, color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
