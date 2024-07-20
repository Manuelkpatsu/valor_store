import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/number_of_reviews_text.dart';
import 'widgets/product_rating_bar_indicator.dart';
import 'widgets/product_rating_text.dart';
import 'widgets/rating_progress_indicator.dart';
import 'widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: Text(TextStrings.reviewsAndRatings), showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TextStrings.reviewsTitle),
            SizedBox(height: AppSizes.spaceBtwItems),
            Row(
              children: [
                ProductRatingText(rating: 4.8),
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingProgressIndicator(ratingScore: 5, ratingValue: 1.0),
                      RatingProgressIndicator(ratingScore: 4, ratingValue: 0.8),
                      RatingProgressIndicator(ratingScore: 3, ratingValue: 0.6),
                      RatingProgressIndicator(ratingScore: 2, ratingValue: 0.4),
                      RatingProgressIndicator(ratingScore: 1, ratingValue: 0.2),
                    ],
                  ),
                ),
              ],
            ),
            ProductRatingBarIndicator(rating: 4.8),
            NumberOfReviewsText(numberOfReviews: 12611),
            SizedBox(height: AppSizes.spaceBtwSections),
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
