import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/commons/widgets/cart_counter_button.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/grid_layout.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/product_card_vertical.dart';
import 'package:valor_store/commons/widgets/primary_header_container.dart';
import 'package:valor_store/commons/widgets/search_container.dart';
import 'package:valor_store/commons/widgets/section_heading.dart';
import 'package:valor_store/commons/widgets/vertical_image_text.dart';
import 'package:valor_store/features/shop/screens/product_details/product_details_screen.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/home_sub_title_text.dart';
import 'widgets/home_title_text.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [HomeTitleText(), HomeSubTitleText()],
                    ),
                    actions: [
                      CartCounterButton(onPressed: () {}, bagItems: 2, iconColor: AppColors.white),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SearchContainer(text: TextStrings.searchInStore, onTap: () {}),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
                        child: SectionHeading(
                          title: TextStrings.popularCategories,
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      SizedBox(
                        height: 80,
                        child: ListView.separated(
                          separatorBuilder: (_, __) => const SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (ctx, index) {
                            return VerticalImageText(
                              image: ImageStrings.shoeIcon,
                              title: TextStrings.shoes,
                              onTap: () {},
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: PromoSlider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: SectionHeading(
                title: TextStrings.popularProducts,
                showActionButton: true,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: AppSizes.xs),
            GridLayout(
              itemCount: 4,
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace, vertical: 0),
              itemBuilder: (ctx, index) => ProductCardVertical(
                onPressed: () => Get.to(() => const ProductDetailsScreen()),
              ),
            ),
            const SizedBox(height: AppSizes.defaultSpace),
          ],
        ),
      ),
    );
  }
}
