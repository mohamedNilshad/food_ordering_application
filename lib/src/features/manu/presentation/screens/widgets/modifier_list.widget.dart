import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_groups.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_options.entity.dart';
import 'package:foa/src/core/presentation/widgets/custom_counter_button_mini.widget.dart';

class ModifierList extends StatefulWidget {
  final List<ModifierGroups> modifierGroups;
  const ModifierList({
    super.key,
    required this.modifierGroups,
  });

  @override
  State<ModifierList> createState() => _ModifierListState();
}

class _ModifierListState extends State<ModifierList> {
  late final List<ModifierGroups> _modifierGroups;

  int _counter = 1;

  void _increaseCounter() {
    setState(() => _counter++);
  }

  void _decreaseCounter() {
    setState(() {
      if (_counter > 1) _counter--;
    });
  }

  @override
  void initState() {
    _modifierGroups = widget.modifierGroups;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          itemCount: _modifierGroups.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            String displayType = _modifierGroups[index].displayType!;
            List<ModifierOptions> options = _modifierGroups[index].modifierOptions!;

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.sm),
                border: Border.all(color: AppColors.darkGrey)
              ),
              padding: const EdgeInsets.all(Sizes.sm),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _modifierGroups[index].title!.en!,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: Sizes.md),
                  ListView.builder(
                      physics: const ScrollPhysics(),
                      itemCount: options.length,
                      shrinkWrap: true,
                      itemBuilder: (context, i)  {
                      return _buildItemAddon(
                        title: options[i].id!.split('-').last,
                        counter: _counter,
                      );
                    }
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index){
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.lg),
              child: const Divider(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildItemAddon({required String title, required int counter}){
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Text(title, style: Theme.of(context).textTheme.bodyLarge)),
          CounterButtonMiniWidget(
            counter: _counter,
            onIncrease: _increaseCounter,
            onDecrease: _decreaseCounter,
          ),
        ],
      ),
    );
  }
}
