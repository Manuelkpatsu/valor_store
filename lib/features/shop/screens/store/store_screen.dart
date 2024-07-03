import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/brand/brand_tile.dart';
import 'package:valor_store/commons/widgets/cart_counter_button.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/grid_layout.dart';
import 'package:valor_store/commons/widgets/search_container.dart';
import 'package:valor_store/commons/widgets/section_heading.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(TextStrings.store),
        actions: [
          CartCounterButton(
            onPressed: () {},
            bagItems: 2,
            iconColor: dark ? AppColors.white : AppColors.black,
            backgroundColor: dark ? AppColors.white : AppColors.black,
            textColor: dark ? AppColors.black : AppColors.white,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor:
                  HelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    SearchContainer(
                      text: TextStrings.searchInStore,
                      onTap: () {},
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    SectionHeading(
                      title: TextStrings.featuredBrands,
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
                    GridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) => BrandTile(
                        onPressed: () {},
                        title: TextStrings.nike,
                        image: ImageStrings.clothIcon,
                        totalProducts: 256,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
