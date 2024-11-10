import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/image_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/presentation/widgets/network_image_builder.widget.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';

class ItemList extends StatelessWidget {
  final int index;
  final String header;
  final String imgURL;
  final String title;
  final String subtitle;
  final double price;
  final int? promo;
  final Function(int) onSelected;
  const ItemList({
    super.key,
    required this.index,
    this.header = '',
    required this.imgURL,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onSelected,
    this.promo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.spaceBtwItems),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(header != '')
          Text(header, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: Sizes.lg),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            minVerticalPadding: 0,
            dense: true,
            titleAlignment: ListTileTitleAlignment.top,
            leading: Container(
              clipBehavior: Clip.hardEdge,
              width: Sizes.productImageSize,
              height: Sizes.productImageSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.borderRadius),
                // image: DecorationImage(
                //   image: AssetImage(imgURL),
                //   fit: BoxFit.fill
                // )
              ),
              child: CNetworkImageBuilder(
                imgUrl: imgURL,
                width: Sizes.productImageSize,
                height: Sizes.productImageSize,
                altImgUrl: ImageStrings.defaultNetworkImage,
              ),
            ),
            titleTextStyle: Theme.of(context).textTheme.titleMedium,
            subtitleTextStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              overflow: TextOverflow.ellipsis
            ),
            title: Text(title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(subtitle, maxLines: 2,),
                const SizedBox(height: Sizes.spaceBtwItems,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      HelperFunctions.formatCurrency(price),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.primary
                      ),
                    ),
                    if(promo != null)
                    Container(
                      margin: const EdgeInsets.only(left: Sizes.spaceSm),
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.ssm, vertical: Sizes.xs),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.borderRadius),
                        color: AppColors.accent
                      ),
                      child: Text(
                        '$promo Promotions Available',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            onTap: () => onSelected(index),
          ),
        ],
      ),
    );
  }
}
