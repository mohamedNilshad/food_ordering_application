import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';

class CRadioButton extends StatelessWidget {
  final String label;
  final double size;
  final Color selectedColor;
  final Color selectedMidColor;
  final Color borderColor;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  const CRadioButton({
    super.key,
    required this.label,
    this.size = 16,
    this.selectedColor = AppColors.buttonGreen,
    this.selectedMidColor = AppColors.white,
    this.borderColor = AppColors.grey,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isSelected),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.sm),
            side: BorderSide(color: isSelected ? selectedColor : AppColors.grey, width: 1)
        ),
        title: Text(label, style: Theme.of(context).textTheme.titleSmall),
        trailing: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? selectedColor : Colors.transparent,
                border: Border.all(color: borderColor, width: 2),
              ),
            ),
            if(isSelected)
              Container(
                width: size/3,
                height: size/3,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedMidColor
                ),
              ),
          ],
        ),
      ),
    );
  }
}
