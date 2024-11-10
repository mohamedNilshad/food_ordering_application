import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/presentation/widgets/svg_icon_builder.widget.dart';

class CategoryList extends StatelessWidget {
  final int index;
  final int selectedCatIndex;
  final String title;
  final Function(bool) onSelected;

  const CategoryList({
    super.key,
    required this.index,
    required this.selectedCatIndex,
    required this.title,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.borderRadiusXXl),
        side: const BorderSide(color: AppColors.white),
      ),
      visualDensity: const VisualDensity(vertical: -4),
      label: Row(
        children: [
          Text(title),
          if (selectedCatIndex == index)
            const Padding(
              padding: EdgeInsets.only(left: Sizes.sm),
              child: CSvgIconBuilder(icon: IconStrings.closeIcon, color: AppColors.white),
            ),
        ],
      ),
      selectedColor: AppColors.primary,
      labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: selectedCatIndex == index ? AppColors.white : AppColors.black,
      ),
      padding: EdgeInsets.fromLTRB(
          Sizes.md, Sizes.sm, ((selectedCatIndex == index) ? 12.0 : Sizes.md), Sizes.sm),
      selected: selectedCatIndex == index,
      side: const BorderSide(color: AppColors.grey),
      onSelected: onSelected,
    );
  }
}
