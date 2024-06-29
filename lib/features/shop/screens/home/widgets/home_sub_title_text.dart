import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class HomeSubTitleText extends StatelessWidget {
  const HomeSubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextStrings.homeAppBarSubTitle,
      style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),
    );
  }
}
