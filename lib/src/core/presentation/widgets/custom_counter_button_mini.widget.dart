import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';

class CounterButtonMiniWidget extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CounterButtonMiniWidget({
    super.key,
    required this.counter,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onDecrease,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(Sizes.borderRadiusSm),
              border: Border.all(color: AppColors.darkGrey),
            ),
            child: const Icon(Icons.remove, color: Colors.white, size: 20.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.sm),
          child: Text(
            counter.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        GestureDetector(
          onTap: onIncrease,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(Sizes.borderRadiusSm),
              border: Border.all(color: AppColors.darkGrey),
            ),
            child: const Icon(Icons.add, color: Colors.black, size: 20.0),
          ),
        ),
      ],
    );
  }
}
