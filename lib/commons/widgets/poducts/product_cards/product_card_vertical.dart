import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/brand_with_verified_icon.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/commons/widgets/circular_icon_button.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_title_text.dart';
import 'package:valor_store/commons/widgets/rounded_image.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/commons/styles/shadows.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

import 'widget/product_cart_button.dart';
import 'widget/product_discount.dart';
import 'widget/product_price_text.dart';

class ProductCardVertical extends StatelessWidget {
  final VoidCallback? onPressed;

  const ProductCardVertical({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.white,
          boxShadow: [ShadowStyle.verticalProductShadow],
        ),
        child: Column(
          children: [
            CircularContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              isCircular: false,
              radius: AppSizes.cardRadiusLg,
              child: Stack(
                children: [
                  const RoundedImage(
                    imageUrl: ImageStrings.productImage1,
                    applyImageRadius: true,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  const Positioned(top: 12, left: 5, child: ProductDiscount(discount: 25)),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIconButton(
                      iconData: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: TextStrings.product1, smallSize: true),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),
                  BrandWithVerifiedIcon(title: TextStrings.nike),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductPriceText(price: 35.5, isLarge: true),
                  ProductCartButton(onTap: () {}, cartQuantity: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
