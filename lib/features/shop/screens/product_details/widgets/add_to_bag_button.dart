import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class AddToBagButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddToBagButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black,
        side: const BorderSide(color: AppColors.black),
        padding: const EdgeInsets.all(AppSizes.md),
      ),
      label: const Text(TextStrings.addToBag),
      icon: const Icon(Iconsax.bag),
    );
  }
}
