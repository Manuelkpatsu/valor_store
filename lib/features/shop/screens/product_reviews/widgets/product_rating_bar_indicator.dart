import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/colors.dart';

class ProductRatingBarIndicator extends StatelessWidget {
  final double rating;

  const ProductRatingBarIndicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: AppColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: AppColors.primary),
    );
  }
}
