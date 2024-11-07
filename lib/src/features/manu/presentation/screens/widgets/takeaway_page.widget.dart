import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/presentation/widgets/custom_radio_button.widget.dart';
import 'package:foa/src/core/presentation/widgets/svg_icon_builder.widget.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';

class TakeawayPageWidget extends StatefulWidget {
  const TakeawayPageWidget({super.key});

  @override
  State<TakeawayPageWidget> createState() => _TakeawayPageWidgetState();
}

class _TakeawayPageWidgetState extends State<TakeawayPageWidget> {
  int selectedManuValue = 0;
  int selectedCatValue = 0;
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = HelperFunctions.screenWidth(context);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding: const EdgeInsets.all(Sizes.lg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _buildBottomSheet,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(Sizes.md, Sizes.sm, Sizes.sm, Sizes.sm),
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(Sizes.sm)
                      ),
                      child: Row(
                        children: [
                          Text(
                            'LUNCH MENU',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(width: Sizes.sm),
                          const CSvgIconBuilder(icon: IconStrings.arrowDownIcon)
                        ],
                      ),
                    ),
                  ),
                  const CSvgIconBuilder(icon: IconStrings.searchIcon)
                ],
              ),
            ),
          Container(
            height: 32.0,
            padding: EdgeInsets.only(left: 8.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ChoiceChip(
                  showCheckmark: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.borderRadiusXXl),
                    side: const BorderSide(color: AppColors.white),
                  ),
                  visualDensity: const VisualDensity(vertical: -4),
                  label: Row(
                    children: [
                      Text('Item $index'),
                      if(selectedCatValue == index)
                        const Padding(
                          padding: EdgeInsets.only(left: Sizes.sm),
                          child: CSvgIconBuilder(
                            icon: IconStrings.closeIcon,
                            color: AppColors.white,
                          ),
                        )
                    ],
                  ),
                  selectedColor: AppColors.primary,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: selectedCatValue == index ? AppColors.white : AppColors.black
                  ),
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, ((selectedCatValue == index) ? 12.0 : 16.0), 8.0),
                  selected: selectedCatValue == index,
                  side: const BorderSide(color: AppColors.grey),
                  onSelected: (bool selected) {
                    if (selected) {
                      setState(() => selectedCatValue = index);
                    }
                  },
                );
              },
              separatorBuilder: (context, index){
                return const SizedBox(width: Sizes.sm);
              },
            ),
          ),

        ],
      ),
    );
  }

  Future<void> _buildBottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.md)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.lg),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.selectMenuLabel,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const CSvgIconBuilder(icon: IconStrings.closeIcon),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Sizes.lg),
                const Divider(height: 1, color: AppColors.grey),
                Padding(
                  padding: const EdgeInsets.all(Sizes.lg),
                  child: Column(
                    children: [
                      CRadioButton(
                        label: 'Lunch · 10am - 5pm',
                        size: 24,
                        isSelected: selectedManuValue == 0,
                        onChanged: (value) {
                          setState(() => selectedManuValue = 0);
                        },
                      ),
                      const SizedBox(height: Sizes.md),
                      CRadioButton(
                        label: 'Lunch · 10am - 5pm',
                        size: 24,
                        isSelected: selectedManuValue == 1,
                        onChanged: (value) {
                          setState(() => selectedManuValue = 1);
                        },
                      ),
                      const SizedBox(height: Sizes.md),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(screenWidth, Sizes.buttonHeight)
                        ),
                        child: const Text(AppStrings.doneLabel),
                      )
                    ],
                  ),
                ),
              ],
            );
          }
        );
      },
    );
  }
}
