import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';

class CCounterButton extends StatelessWidget {
  final double count;
  final int quantity;
  final EdgeInsets buttonPadding;
  final EdgeInsets labelPadding;
  final double fontSize;
  final Function onIncrease;
  final Function onDecrease;

  const CCounterButton({
    super.key,
    required this.count,
    required this.quantity,
    this.buttonPadding = const EdgeInsets.symmetric(vertical: 14.0, horizontal: Sizes.md),
    this.labelPadding = const EdgeInsets.symmetric(horizontal: Sizes.sm),
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
              '$quantity',
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: fontSize,
                overflow: TextOverflow.ellipsis,
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
