import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/rounded_image.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class ProductDetailsImagesSlider extends StatelessWidget {
  final List<String> images;

  const ProductDetailsImagesSlider({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Positioned(
      right: 0,
      bottom: 30,
      left: 0,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final imageUrl = images[index];

            return RoundedImage(
              imageUrl: imageUrl,
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              width: 80,
              border: Border.all(color: AppColors.primary),
              padding: const EdgeInsets.all(AppSizes.sm),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(width: AppSizes.spaceBtwItems),
          itemCount: images.length,
        ),
      ),
    );
  }
}
