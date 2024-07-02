import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class ProductCartButton extends StatelessWidget {
  final VoidCallback? onTap;
  final int cartQuantity;

  const ProductCartButton({super.key, required this.onTap, required this.cartQuantity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.dark,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.cardRadiusMd),
            bottomRight: Radius.circular(AppSizes.productImageRadius),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          width: AppSizes.iconLg * 1.2,
          height: AppSizes.iconLg * 1.2,
          child: cartQuantity > 0
              ? Text(
                  cartQuantity.toString(),
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.white),
                )
              : const Icon(Iconsax.add, color: AppColors.white),
        ),
      ),
    );
  }
}
