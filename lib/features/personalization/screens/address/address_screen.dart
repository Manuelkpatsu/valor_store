import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/address_tile.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(TextStrings.addresses), showBackArrow: true),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            AddressTile(isSelected: true),
            AddressTile(isSelected: false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(Iconsax.add, color: AppColors.white),
      ),
    );
  }
}
