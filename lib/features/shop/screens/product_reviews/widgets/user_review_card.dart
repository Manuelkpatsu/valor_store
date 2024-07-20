import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/formatters/formatter.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

import 'product_rating_bar_indicator.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(backgroundImage: AssetImage(ImageStrings.userProfileImage1)),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert), splashRadius: 20),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          children: [
            const ProductRatingBarIndicator(rating: 4.0),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              AppFormatter.formatDate(DateTime(2023, 11, 1), 'dd MMM, y'),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        const ReadMoreText(
          TextStrings.review,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: TextStrings.showLess,
          trimCollapsedText: TextStrings.showMore,
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        CircularContainer(
          isCircular: false,
          width: null,
          height: null,
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          radius: AppSizes.cardRadiusLg,
          padding: const EdgeInsets.all(AppSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(TextStrings.storeName, style: Theme.of(context).textTheme.titleMedium),
                  Text(
                    AppFormatter.formatDate(DateTime(2023, 11, 2), 'dd MMM, y'),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const ReadMoreText(
                TextStrings.review,
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: TextStrings.showLess,
                trimCollapsedText: TextStrings.showMore,
                moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
                lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}
