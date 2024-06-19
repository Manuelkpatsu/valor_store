import 'package:flutter/material.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class OnboardingImage extends StatelessWidget {
  final String image;

  const OnboardingImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: HelperFunctions.screenWidth() * 0.8,
      height: HelperFunctions.screenHeight() * 0.6,
    );
  }
}
