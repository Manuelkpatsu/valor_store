import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final VoidCallback? onPressed;

  const SocialButton({super.key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(side: const BorderSide(color: AppColors.grey)),
      onPressed: onPressed,
      icon: Image.asset(
        image,
        width: AppSizes.iconMd,
        height: AppSizes.iconMd,
        fit: BoxFit.cover,
      ),
    );
  }
}
