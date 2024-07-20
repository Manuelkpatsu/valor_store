import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/cart_tile.dart';
import 'widgets/checkout_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(TextStrings.cart), showBackArrow: true),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.defaultSpace),
        itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(height: AppSizes.spaceBtwSections),
        itemBuilder: (_, index) => const CartTile(),
      ),
      bottomNavigationBar: CheckoutButton(onPressed: () {}, price: 140.0),
    );
  }
}
