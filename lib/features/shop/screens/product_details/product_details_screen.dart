import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:valor_store/commons/widgets/brand_with_verified_icon.dart';
import 'package:valor_store/commons/widgets/choice_chip.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/commons/widgets/circular_icon_button.dart';
import 'package:valor_store/commons/widgets/circular_image.dart';
import 'package:valor_store/commons/widgets/curved_edges_widget.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_discount.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_price_text.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_title_text.dart';
import 'package:valor_store/commons/widgets/section_heading.dart';
import 'package:valor_store/features/shop/screens/product_reviews/product_reviews_screen.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/enums.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

import 'widgets/add_to_bag_button.dart';
import 'widgets/checkout_button.dart';
import 'widgets/initial_product_price.dart';
import 'widgets/product_details_image.dart';
import 'widgets/product_details_images_slider.dart';
import 'widgets/rating_text.dart';
import 'widgets/share_button.dart';
import 'widgets/stock_status.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgesWidget(
              child: Container(
                color: isDark ? AppColors.darkerGrey : AppColors.light,
                child: Stack(
                  children: [
                    const ProductDetailsImage(imagePath: ImageStrings.productImage1),
                    const ProductDetailsImagesSlider(
                      images: [
                        ImageStrings.productImage1,
                        ImageStrings.productImage1,
                        ImageStrings.productImage1,
                        ImageStrings.productImage1,
                        ImageStrings.productImage1,
                      ],
                    ),
                    CustomAppBar(
                      showBackArrow: true,
                      actions: [
                        CircularIconButton(
                          iconData: Iconsax.heart5,
                          color: Colors.red,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.defaultSpace,
                right: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Iconsax.star5, color: Colors.amber, size: 24),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),
                      const RatingText(rating: 5.0, totalRatings: 199),
                      const Spacer(),
                      ShareButton(onPressed: () {}),
                    ],
                  ),
                  const Row(
                    children: [
                      ProductDiscount(discount: 25),
                      SizedBox(width: AppSizes.spaceBtwItems),
                      InitialProductPrice(price: 250),
                      SizedBox(width: AppSizes.spaceBtwItems),
                      ProductPriceText(price: 175, isLarge: true),
                    ],
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems / 1.5),
                  const ProductTitleText(title: TextStrings.product1),
                  const SizedBox(width: AppSizes.spaceBtwItems / 1.5),
                  const StockStatus(status: TextStrings.inStock),
                  const SizedBox(width: AppSizes.spaceBtwItems / 1.5),
                  const Row(
                    children: [
                      CircularImage(image: ImageStrings.shoeIcon, width: 32, height: 32),
                      BrandWithVerifiedIcon(
                        title: TextStrings.nike,
                        brandTextSize: TextSizes.medium,
                      ),
                    ],
                  ),
                  CircularContainer(
                    padding: const EdgeInsets.all(AppSizes.md),
                    isCircular: false,
                    width: null,
                    height: null,
                    radius: AppSizes.borderRadiusMd,
                    backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            SectionHeading(title: TextStrings.variation, showActionButton: false),
                            SizedBox(width: AppSizes.spaceBtwItems),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ProductTitleText(title: TextStrings.price, smallSize: true),
                                    InitialProductPrice(price: 25),
                                    SizedBox(width: AppSizes.spaceBtwItems),
                                    ProductPriceText(price: 20),
                                  ],
                                ),
                                StockStatus(status: TextStrings.inStock, smallSize: true),
                              ],
                            ),
                          ],
                        ),
                        ProductTitleText(
                          title: TextStrings.variationDescription,
                          smallSize: true,
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const SectionHeading(title: TextStrings.colors, showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  Wrap(
                    spacing: 8,
                    children: [
                      AppChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                      AppChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                      AppChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const SectionHeading(title: TextStrings.size, showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  Wrap(
                    spacing: 8,
                    children: [
                      AppChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                      AppChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                      AppChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  CheckoutButton(onPressed: () {}),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SectionHeading(title: TextStrings.description, showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                    TextStrings.productDescription,
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: TextStrings.showMore,
                    trimExpandedText: TextStrings.showLess,
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: AppSizes.sm),
                  const Divider(height: 0),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    onTap: () => Get.to(() => const ProductReviewsScreen()),
                    title: const SectionHeading(title: 'Reviews(199)', showActionButton: false),
                    trailing: const Icon(Iconsax.arrow_right_3, size: 18),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkerGrey : AppColors.light,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(AppSizes.cardRadiusLg)),
        ),
        child: Row(
          children: [
            CircularIconButton(
              iconData: Iconsax.minus,
              onPressed: () {},
              height: 40,
              width: 40,
              color: AppColors.white,
              backgroundColor: AppColors.darkGrey,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(2.toString(), style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: AppSizes.spaceBtwItems),
            CircularIconButton(
              iconData: Iconsax.add,
              onPressed: () {},
              height: 40,
              width: 40,
              color: AppColors.white,
              backgroundColor: AppColors.black,
            ),
            const Spacer(),
            AddToBagButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
