import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/domain/entities/menu/menu_availability.entity.dart';
import 'package:foa/src/core/presentation/widgets/custom_radio_button.widget.dart';
import 'package:foa/src/core/presentation/widgets/svg_icon_builder.widget.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MenuListBottomSheet extends StatefulWidget {
  final List<Menu> menu;
  final String selectedManuId;
  final int selectedManuIndex;
  final Function(String, int) onMenuSelected;
  final Function(String, String, int) onPressed;
  final AutoScrollController autoScrollController;

  const MenuListBottomSheet({
    super.key,
    required this.menu,
    required this.selectedManuId,
    required this.selectedManuIndex,
    required this.onMenuSelected,
    required this.onPressed,
    required this.autoScrollController,
  });

  @override
  State<MenuListBottomSheet> createState() => _MenuListBottomSheetState();
}

class _MenuListBottomSheetState extends State<MenuListBottomSheet> {
  late String _selectedManuId;
  late String _selectedManuItem;
  late int _selectedManuIndex;

  @override
  Widget build(BuildContext context) {
    double screenWidth = HelperFunctions.screenWidth(context);
    _selectedManuId = widget.selectedManuId;
    _selectedManuItem = widget.menu[widget.selectedManuIndex].title!.en!;
    _selectedManuIndex = widget.selectedManuIndex;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.md)),
              color: AppColors.white
          ),
          padding: const EdgeInsets.fromLTRB(Sizes.lg, Sizes.lg, Sizes.lg, 0.0),
          child: Column(
            children: [
              Container(
                width: 48.0,
                height: 5.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: AppColors.grey
                ),
                margin: const EdgeInsets.only(bottom: Sizes.sm),
              ),
              Row(
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
              const SizedBox(height: Sizes.lg),
              const Divider(height: 1, color: AppColors.grey),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Sizes.lg),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.separated(
                  physics: const ScrollPhysics(),
                  controller: widget.autoScrollController,
                  scrollDirection: Axis.vertical,
                  itemCount: widget.menu.length,
                  itemBuilder: (context, index) {
                    String time = _getTime(widget.menu[index].menuAvailability!);
                    return AutoScrollTag(
                      key: ValueKey(index),
                      controller: widget.autoScrollController,
                      index: index,
                      child: CRadioButton(
                        label: '${widget.menu[index].title!.en!}  $time',
                        size: 24,
                        isSelected: widget.selectedManuId == widget.menu[index].menuID,
                        onChanged: (value) {
                          setState(() {
                            _selectedManuId = widget.menu[index].menuID!;
                            _selectedManuItem = widget.menu[index].title!.en!;
                            _selectedManuIndex = index;
                            widget.onMenuSelected(
                              widget.menu[index].menuID!,
                              index,
                            );
                          });
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: Sizes.md);
                  },
                ),
              ),
              const SizedBox(height: Sizes.lg),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.onPressed(
                        _selectedManuId,
                        _selectedManuItem,
                        _selectedManuIndex,
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth, Sizes.buttonHeight)),
                child: const Text(AppStrings.doneLabel),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getTime(MenuAvailability menuAvailability){
    String day = HelperFunctions.getToday();
    String startTime = '';
    String endTime = '';
    if (day == 'monday') {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.monday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.monday!.endTime!);
      return '$startTime - $endTime';

    } else if (day == 'tuesday') {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.tuesday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.tuesday!.endTime!);
      return '$startTime - $endTime';

    } else if (day == 'wednesday') {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.wednesday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.wednesday!.endTime!);
      return '$startTime - $endTime';

    } else if (day == 'thursday') {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.thursday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.thursday!.endTime!);
      return '$startTime - $endTime';

    } else if (day == 'friday') {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.friday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.friday!.endTime!);
      return '$startTime - $endTime';

    } else if (day == 'saturday') {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.saturday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.saturday!.endTime!);
      return '$startTime - $endTime';

    } else {
      startTime = HelperFunctions.convertToAMPM(menuAvailability.sunday!.startTime!);
      endTime = HelperFunctions.convertToAMPM(menuAvailability.sunday!.endTime!);
      return '$startTime - $endTime';
    }
  }
}
