import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/sizes.dart';

class NutritionalPage extends StatelessWidget {
  const NutritionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.sm),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Sizes.spaceBtwItems),
          Text(
            'Nutritional value per 100g',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: Sizes.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(context, '198', 'Kcal'),
              _buildItem(context, '14.1', 'Proteins'),
              _buildItem(context, '19.6', 'Fats'),
              _buildItem(context, '6.6', 'Carbo H'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem(context, amount, title){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(amount, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: Sizes.sm),
        Text(title, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
