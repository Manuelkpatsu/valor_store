import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class BrandTopProductImage extends StatelessWidget {
  final String image;
  final EdgeInsets? margin;

  const BrandTopProductImage({super.key, required this.image, this.margin});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CircularContainer(
        height: 100,
        width: null,
        isCircular: false,
        radius: AppSizes.borderRadiusMd,
        backgroundColor: HelperFunctions.isDarkMode(context) ? AppColors.dark : AppColors.light,
        margin: margin,
        padding: const EdgeInsets.all(AppSizes.md),
        showBorder: false,
        child: Image(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    );
  }
}
