import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/device/device_utility.dart';

class OnboardingSkipButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const OnboardingSkipButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: onPressed,
        child: const Text('Skip'),
      ),
    );
  }
}
