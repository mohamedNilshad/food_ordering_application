import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';

class IngredientListWidget extends StatefulWidget {
  final List<String> ingredientItems;

  const IngredientListWidget({
    super.key,
    required this.ingredientItems,
  });

  @override
  IngredientListWidgetState createState() => IngredientListWidgetState();
}

class IngredientListWidgetState extends State<IngredientListWidget> {
  int itemLength = 5;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List.generate(itemLength + 1, (index) {
        if (index < itemLength) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: Sizes.ssm, horizontal: Sizes.ssm + 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.md),
              border: Border.all(color: AppColors.grey),
            ),
            child: Text(
              widget.ingredientItems[index],
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.darkerGrey,
              ),
            ),
          );
        }

        if (itemLength != widget.ingredientItems.length) {
          return GestureDetector(
            onTap: () {
              if (itemLength < widget.ingredientItems.length) {
                setState(() => itemLength = widget.ingredientItems.length);
              }
            },
            child: Container(
              padding: const EdgeInsets.only(top: 8.0), // Sizes.md
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.seeMoreLabel,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_right_outlined, color: AppColors.primary),
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      }),
    );
  }
}
