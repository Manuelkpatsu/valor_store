import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/device/device_utility.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final int pageCount;
  final PageController controller;
  final void Function(int)? onDotClicked;

  const OnboardingPageIndicator({
    super.key,
    required this.pageCount,
    required this.controller,
    required this.onDotClicked,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller,
        count: pageCount,
        onDotClicked: onDotClicked,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
