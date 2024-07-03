import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  final double width, height, padding;
  final Color? backgroundColor, overlayColor;
  final bool isNetworkImage;
  final String image;
  final BoxFit? fit;

  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = AppSizes.sm,
    this.backgroundColor,
    this.overlayColor,
    this.isNetworkImage = false,
    required this.image,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? AppColors.black : AppColors.white),
        shape: BoxShape.circle,
      ),
      child: Image(
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        fit: fit,
        color: overlayColor ?? (dark ? AppColors.white : AppColors.black),
      ),
    );
  }
}
