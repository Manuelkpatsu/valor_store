import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class HomeTitleText extends StatelessWidget {
  const HomeTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextStrings.homeAppBarTitle,
      style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey),
    );
  }
}
