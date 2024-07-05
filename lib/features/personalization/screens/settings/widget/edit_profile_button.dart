import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';

class EditProfileButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const EditProfileButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: onPressed,
      color: AppColors.white,
      icon: const Icon(Iconsax.edit),
    );
  }
}
