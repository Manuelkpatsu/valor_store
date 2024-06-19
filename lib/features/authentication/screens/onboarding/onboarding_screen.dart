import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_page_indicator.dart';
import 'widgets/onboarding_skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: ImageStrings.onboardingImage1,
                title: TextStrings.onBoardingTitle1,
                subTitle: TextStrings.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: ImageStrings.onboardingImage2,
                title: TextStrings.onBoardingTitle2,
                subTitle: TextStrings.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: ImageStrings.onboardingImage3,
                title: TextStrings.onBoardingTitle3,
                subTitle: TextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          OnboardingSkipButton(onPressed: controller.skipPage),
          OnboardingPageIndicator(
            pageCount: 3,
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
          ),
          OnboardingNextButton(onPressed: controller.nextPage),
        ],
      ),
    );
  }
}
