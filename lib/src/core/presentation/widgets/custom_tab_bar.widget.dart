import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/presentation/widgets/svg_icon_builder.widget.dart';

class CTabBarButton extends StatelessWidget {
  final String iconPath;
  final bool isSelected;
  final int pageIndex;
  final ValueChanged<bool> onSelected;
  final PageController pageController;

  const CTabBarButton({
    super.key,
    required this.iconPath,
    required this.isSelected,
    required this.pageIndex,
    required this.onSelected,
    required this.pageController,
  });

  BorderRadiusGeometry _getBorderRadius(int index){
    switch(index){
      case 0: return const BorderRadius.horizontal(
                left: Radius.circular(Sizes.borderRadiusXl - 1),
              );

      case 2: return const BorderRadius.horizontal(
        right: Radius.circular(Sizes.borderRadiusXl - 1),
      );

      default : return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: _getBorderRadius(pageIndex),
        side: const BorderSide(color: AppColors.white),
      ),
      visualDensity: const VisualDensity(vertical: -4),
      label: CSvgIconBuilder(icon: iconPath, isSelected: isSelected),
      selectedColor: AppColors.selectedTabColor,
      selected: isSelected,
      onSelected: (bool selected) {
        if (selected) {
          onSelected(selected);
          pageController.animateToPage(
            pageIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }
}
