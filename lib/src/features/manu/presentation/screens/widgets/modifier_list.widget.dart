import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/domain/entities/Items/menu_item.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_groups.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_options.entity.dart';
import 'package:foa/src/core/presentation/widgets/custom_counter_button_mini.widget.dart';
import 'package:foa/src/core/provider/load_data.provider.dart';
import 'package:provider/provider.dart';

class ModifierList extends StatefulWidget {
  final List<ModifierGroups> modifierGroups;
  final Function(double, bool) onChanged;
  const ModifierList({
    super.key,
    required this.modifierGroups,
    required this.onChanged,
  });

  @override
  State<ModifierList> createState() => _ModifierListState();
}

class _ModifierListState extends State<ModifierList> {
  late final List<ModifierGroups> _modifierGroups;
  late final List<MenuItem> _menuItem;
  List<List<Map<String, dynamic>>> quantityItem = [];

  List<List<ModifierOptions>> options = [];

  void _increaseCounter(int index, int i) {
    setState(() {
      quantityItem[index][i]['itemQty']++;
      widget.onChanged(
        quantityItem[index][i]['itemPrice'],
        true
      );
    });
  }

  void _decreaseCounter(int index, int i) {
    setState(() {
      if(quantityItem[index][i]['itemQty']>0) {
        quantityItem[index][i]['itemQty']--;
        widget.onChanged(
          quantityItem[index][i]['itemPrice'],
          false,
        );
      }

    });
  }

  void setData(){
    _modifierGroups = widget.modifierGroups;
    _menuItem = context.read<LoadDataProvider>().res!.items!;
    options = [];
    quantityItem = [];

    for (int i = 0; i < _modifierGroups.length; i++) {
      if (_modifierGroups[i].modifierOptions != null) {
        options.add(_modifierGroups[i].modifierOptions!);
      }
    }

    for (int i = 0; i < options.length; i++) {
      List<Map<String, dynamic>> innerList = [];

      for (int j = 0; j < options[i].length; j++) {
        MenuItem? item = _menuItem.firstWhere(
              (item) => item.menuItemID == options[i][j].id!,
          orElse: () => MenuItem.fromJson(const {}),
        );

        innerList.add({
          "itemName": item.title?.en ?? '',
          "itemPrice": item.priceInfo?.price?.tablePrice?.toDouble() ?? 0.0,
          "itemQty": 0,
        });
      }
      quantityItem.add(innerList);
    }
  }

  @override
  void initState() {
    setData();
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
            // List<ModifierOptions> options = _modifierGroups[index].modifierOptions!;

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
                      itemCount: quantityItem[index].length,
                      shrinkWrap: true,
                      itemBuilder: (context, i)  {
                        if(quantityItem[index][i]['itemName'] != '') {
                          return _buildItemAddon(
                            index: index,
                            innerIndex: i,
                            title: quantityItem[index][i]['itemName'],
                            price: quantityItem[index][i]['itemPrice'],
                            quantity: quantityItem[index][i]['itemQty'],
                          );
                        }
                        return const SizedBox();
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

  Widget _buildItemAddon({required String title, required double price, required int quantity, required int index, required int innerIndex}){
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Text(title, style: Theme.of(context).textTheme.bodyLarge)),
          CounterButtonMiniWidget(
            quantity: quantity,
            onIncrease: () {
                _increaseCounter(index, innerIndex);
              },
            onDecrease: () =>_decreaseCounter(index, innerIndex),
          ),
        ],
      ),
    );
  }
}
