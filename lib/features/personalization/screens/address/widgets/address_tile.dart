import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class AddressTile extends StatelessWidget {
  final bool isSelected;

  const AddressTile({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return CircularContainer(
      isCircular: false,
      width: double.infinity,
      height: null,
      radius: AppSizes.cardRadiusLg,
      showBorder: true,
      backgroundColor: isSelected ? AppColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : isDark
              ? AppColors.darkerGrey
              : AppColors.grey,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text('(+123) 456 7890', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: AppSizes.sm / 2),
              const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA', softWrap: true),
            ],
          ),
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              isSelected ? Iconsax.tick_circle5 : null,
              color: isSelected
                  ? isDark
                      ? AppColors.light
                      : AppColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
