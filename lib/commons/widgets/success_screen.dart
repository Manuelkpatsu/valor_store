import 'package:flutter/material.dart';
import 'package:valor_store/commons/styles/spacing_styles.dart';
import 'package:valor_store/commons/widgets/continue_button.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  final String title, image, subTitle;
  final VoidCallback? onPressed;

  const SuccessScreen({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyles.paddingWithAppBarHeight * 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image, width: HelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: AppSizes.spaceBtwSections),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            ContinueButton(onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}
