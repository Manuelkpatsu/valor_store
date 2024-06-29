import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';

class CartCounterButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final int bagItems;
  final Color iconColor;

  const CartCounterButton({super.key, required this.onPressed, required this.bagItems, required this.iconColor,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          color: iconColor,
          icon: const Icon(Iconsax.shopping_bag),
        ),
        Positioned(
          right: 5,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.black),
            child: Text(
              bagItems.toString(),
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: AppColors.white,
                    fontSizeFactor: 0.8,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
