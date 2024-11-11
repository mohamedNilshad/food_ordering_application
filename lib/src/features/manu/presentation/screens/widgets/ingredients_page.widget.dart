import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/domain/entities/Items/menu_item.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_groups.entity.dart';
import 'package:foa/src/core/presentation/widgets/custom_counter_button.widget.dart';
import 'package:foa/src/core/provider/load_data.provider.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/ingredient_list.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/modifier_list.widget.dart';
import 'package:provider/provider.dart';

class IngredientsPage extends StatefulWidget {
  final List<String> ingredientItems;
  final MenuItem menuItem;

  const IngredientsPage({
    super.key,
    required this.ingredientItems,
    required this.menuItem,
  });

  @override
  State<IngredientsPage> createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {
  final TextEditingController _controller = TextEditingController();
  late final MenuItem menuItem;
  List<ModifierGroups> modifierGroup = [];
  double price = 0;
  double pricePerItem = 0;
  int quantity = 1;
  int itemLength = 5;
  late double screenWidth;
  bool loadingGroup = false;

  void _increaseCounter() {
    setState(() {
      quantity++;
      price = pricePerItem * quantity;
    });
  }

  void _decreaseCounter() {
    setState(() {
      if (quantity > 1) {
        price = price - pricePerItem;
        quantity--;
      }
    });
  }

  Future<void> _setData() async {

    if (loadingGroup) return;
    setState(() => loadingGroup = true);
    try {
      setState(()  {
        menuItem = widget.menuItem;
        pricePerItem = menuItem.priceInfo!.price!.tablePrice!.toDouble();
        price = pricePerItem;

        modifierGroup = context.read<LoadDataProvider>().res!.modifierGroups!
            .where((modifyGroup) =>
            menuItem.modifierGroupRules!.iDs!.contains(modifyGroup.modifierGroupID)
        ).toList();
        loadingGroup = false;
      });
    } on Exception {
      setState(() => loadingGroup = false);
    }
  }

  @override
  void initState() {
    Future.microtask(() => _setData());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    screenWidth = HelperFunctions.screenWidth(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Sizes.lg),
          Text(
            'This product contains ingredients that may trigger allergies. Please review the ingredient list for details',
            maxLines: 3,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 15,
              color: AppColors.darkerGrey,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: Sizes.lg),
          IngredientListWidget(ingredientItems: widget.ingredientItems),
          const SizedBox(height: Sizes.lg),
          const Divider(),
          const SizedBox(height: Sizes.spaceBtwItems),
          modifierGroup.isEmpty ? const SizedBox() :
          ModifierList(
            modifierGroups: modifierGroup,
            onChanged: (double addOnPrice, bool isIncreased){
              setState(() {
                isIncreased ? pricePerItem += addOnPrice : pricePerItem = pricePerItem - addOnPrice;
                price = pricePerItem * quantity;
              });
            }
          ),
          const SizedBox(height: Sizes.spaceBtwItems),
          Text(
            AppStrings.addCommentsLabel,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: Sizes.lg),
          TextField(
            controller: _controller,
            maxLines: 5,
            minLines: 4,
            decoration: InputDecoration(
              labelText: "Write here",
              labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.darkerGrey
              ),
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
                borderSide: const BorderSide(color: AppColors.grey)
              ),

            ),
            keyboardType: TextInputType.multiline,
          ),
          const SizedBox(height: Sizes.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CCounterButton(
                count: price,
                quantity: quantity,
                onIncrease: _increaseCounter,
                onDecrease: _decreaseCounter,
              ),
              const SizedBox(width: Sizes.defaultSpace),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.lg, vertical: Sizes.md),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.borderRadiusMd)
                    ),
                    textStyle: const TextStyle(overflow: TextOverflow.ellipsis)
                  ),
                  child: Text('Add to Cart  ${HelperFunctions.formatCurrency(price)}', maxLines: 1,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
