import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/grid_layout.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/product_card_vertical.dart';
import 'package:valor_store/commons/widgets/section_heading.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'brand_showcase.dart';

class CategoryTabView extends StatelessWidget {
  const CategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BrandShowcase(
          onPressed: () {},
          brand: TextStrings.nike,
          brandImage: ImageStrings.clothIcon,
          productImages: const [
            ImageStrings.productImage1,
            ImageStrings.productImage1,
            ImageStrings.productImage1,
          ],
          totalProducts: 256,
        ),
        BrandShowcase(
          onPressed: () {},
          brand: TextStrings.nike,
          brandImage: ImageStrings.clothIcon,
          productImages: const [
            ImageStrings.productImage1,
            ImageStrings.productImage1,
            ImageStrings.productImage1,
          ],
          totalProducts: 256,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        SectionHeading(title: TextStrings.youMightLike, onPressed: () {}),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        GridLayout(
          itemCount: 4,
          itemBuilder: (_, index) => const ProductCardVertical(),
          padding: EdgeInsets.zero,
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}
