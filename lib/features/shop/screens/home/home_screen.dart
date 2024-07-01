import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/cart_counter_button.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/primary_header_container.dart';
import 'package:valor_store/commons/widgets/search_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/home_sub_title_text.dart';
import 'widgets/home_title_text.dart';

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
                  const SearchContainer(text: TextStrings.searchInStore),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
