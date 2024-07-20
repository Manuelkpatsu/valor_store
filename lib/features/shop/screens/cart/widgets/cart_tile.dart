import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/brand_with_verified_icon.dart';
import 'package:valor_store/commons/widgets/circular_icon_button.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_price_text.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_title_text.dart';
import 'package:valor_store/commons/widgets/rounded_image.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Row(
        children: [
          RoundedImage(
            imageUrl: ImageStrings.productImage1,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: isDark ? AppColors.darkerGrey : AppColors.light,
          ),
          const SizedBox(width: AppSizes.spaceBtwItems),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BrandWithVerifiedIcon(title: TextStrings.nike),
                const Flexible(child: ProductTitleText(title: TextStrings.product1, maxLines: 1)),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
                  ]),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Row(
                  children: [
                    CircularIconButton(
                      iconData: Iconsax.minus,
                      onPressed: () {},
                      width: 32,
                      height: 32,
                      size: AppSizes.md,
                      color: isDark ? AppColors.white : AppColors.black,
                      backgroundColor: isDark ? AppColors.darkerGrey : AppColors.light,
                    ),
                    const SizedBox(width: AppSizes.spaceBtwItems),
                    Text(2.toString(), style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(width: AppSizes.spaceBtwItems),
                    CircularIconButton(
                      iconData: Iconsax.add,
                      onPressed: () {},
                      width: 32,
                      height: 32,
                      size: AppSizes.md,
                      color: AppColors.white,
                      backgroundColor: AppColors.primary,
                    ),
                    const Spacer(),
                    const ProductPriceText(price: 35.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
