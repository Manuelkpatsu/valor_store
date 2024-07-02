import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class CircularIconButton extends StatelessWidget {
  final double? width, height, size;
  final IconData iconData;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  const CircularIconButton({
    super.key,
    this.width,
    this.height,
    this.size = AppSizes.lg,
    required this.iconData,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? AppColors.dark.withOpacity(0.9)
                : AppColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        visualDensity: VisualDensity.compact,
        onPressed: onPressed,
        iconSize: size,
        icon: Icon(iconData),
        color: color,
      ),
    );
  }
}
