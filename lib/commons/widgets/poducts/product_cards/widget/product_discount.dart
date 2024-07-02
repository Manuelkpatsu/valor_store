import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class ProductDiscount extends StatelessWidget {
  final int discount;

  const ProductDiscount({super.key, required this.discount});

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      radius: AppSizes.sm,
      width: null,
      height: null,
      isCircular: false,
      backgroundColor: AppColors.secondary.withOpacity(0.8),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
      child: Text(
        '$discount%',
        style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.black),
      ),
    );
  }
}
