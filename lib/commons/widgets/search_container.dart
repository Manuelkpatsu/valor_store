import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/device/device_utility.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool showBackground, showBorder;

  const SearchContainer({
    super.key,
    required this.text,
    this.iconData = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      width: DeviceUtils.getScreenWidth(),
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      decoration: BoxDecoration(
        color: showBackground
            ? dark
                ? AppColors.white
                : AppColors.light
            : Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: showBorder ? Border.all(color: AppColors.grey) : null,
      ),
      child: Row(
        children: [
          Icon(iconData, color: AppColors.darkerGrey),
          const SizedBox(width: AppSizes.spaceBtwItems),
          Text(text, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
