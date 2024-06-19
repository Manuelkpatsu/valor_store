import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/sizes.dart';

import 'onboarding_image.dart';
import 'onboarding_sub_title.dart';
import 'onboarding_title.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          OnboardingImage(image: image),
          OnboardingTitle(title: title),
          const SizedBox(height: AppSizes.spaceBtwItems),
          OnboardingSubTitle(subTitle: subTitle),
        ],
      ),
    );
  }
}
