import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/image_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
          image: const DecorationImage(
            image: AssetImage(ImageStrings.defaultMenu),
            fit: BoxFit.cover,
          ),
          border: Border.all(width: 2, color: AppColors.secondary),
        ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Title',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Subtitle',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                ),
              ],
            ),
            const Positioned(
              top: 2,
              right: 2,
              child:Icon(Icons.info_outline_rounded, color: AppColors.white,),
            )
          ],
        ),
      ),
    );
  }
}
