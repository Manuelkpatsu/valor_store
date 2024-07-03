import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color textColor;

  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    this.backgroundColor,
    this.textColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(AppSizes.sm),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor ?? (dark ? AppColors.black : AppColors.white),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              color: dark ? AppColors.light : AppColors.dark,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems / 2),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: textColor),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
