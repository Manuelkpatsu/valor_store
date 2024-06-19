import 'package:flutter/material.dart';

class OnboardingSubTitle extends StatelessWidget {
  final String subTitle;

  const OnboardingSubTitle({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
