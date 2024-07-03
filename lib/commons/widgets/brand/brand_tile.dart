import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/brand_with_verified_icon.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/commons/widgets/circular_image.dart';
import 'package:valor_store/utils/constants/enums.dart';
import 'package:valor_store/utils/constants/sizes.dart';

import 'widget/brand_total_products.dart';

class BrandTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title, image;
  final int totalProducts;
  final bool showBorder;

  const BrandTile({
    super.key,
    required this.onPressed,
    required this.title,
    required this.image,
    required this.totalProducts,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircularContainer(
        isCircular: false,
        padding: const EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        radius: AppSizes.borderRadiusLg,
        width: null,
        height: null,
        child: Row(
          children: [
            CircularImage(
              image: image,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BrandWithVerifiedIcon(title: title, brandTextSize: TextSizes.large),
                  BrandTotalProducts(totalProducts: totalProducts),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
