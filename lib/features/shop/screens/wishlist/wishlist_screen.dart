import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/circular_icon_button.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/grid_layout.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/product_card_vertical.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(TextStrings.wishlist, style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIconButton(iconData: Iconsax.add, onPressed: () {}),
        ],
      ),
      body: GridLayout(
        itemCount: 5,
        itemBuilder: (_, index) => const ProductCardVertical(),
        shrinkWrap: false,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.spaceBtwItems,
        ),
      ),
    );
  }
}
