import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/brand/brand_tile.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';

import 'brand_top_product_image.dart';

class BrandShowcase extends StatelessWidget {
  final List<String> productImages;
  final String brand, brandImage;
  final int totalProducts;
  final VoidCallback? onPressed;

  const BrandShowcase({
    super.key,
    required this.productImages,
    required this.brand,
    required this.brandImage,
    required this.totalProducts,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircularContainer(
        isCircular: false,
        width: null,
        height: null,
        showBorder: true,
        borderColor: AppColors.darkGrey,
        backgroundColor: Colors.transparent,
        radius: AppSizes.borderRadiusLg,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            BrandTile(
              onPressed: null,
              showBorder: false,
              image: brandImage,
              title: brand,
              totalProducts: 256,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Row(
              children: productImages.mapIndexed((index, image) {
                return BrandTopProductImage(
                  image: image,
                  margin: index == productImages.length - 1
                      ? null
                      : const EdgeInsets.only(right: AppSizes.sm),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
