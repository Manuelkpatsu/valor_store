import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ShareButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 20,
      icon: const Icon(Icons.share, size: AppSizes.iconMd),
    );
  }
}
