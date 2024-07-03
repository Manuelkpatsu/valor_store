import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class SectionHeading extends StatelessWidget {
  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final VoidCallback? onPressed;

  const SectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = TextStrings.viewAll,
    this.textColor,
    this.showActionButton = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: textColor ?? (dark ? AppColors.white : AppColors.black),
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        showActionButton
            ? TextButton(
                onPressed: onPressed,
                child: Text(buttonTitle),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
