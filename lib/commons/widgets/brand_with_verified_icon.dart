import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/enums.dart';
import 'package:valor_store/utils/constants/sizes.dart';

import 'poducts/brand_text.dart';

class BrandWithVerifiedIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  const BrandWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BrandText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: AppSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: AppSizes.iconXs),
      ],
    );
  }
}
