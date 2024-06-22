import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class PolicyAndTerms extends StatelessWidget {
  final VoidCallback? onPrivacyTap;
  final VoidCallback? onTermsTap;

  const PolicyAndTerms({super.key, required this.onPrivacyTap, required this.onTermsTap});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Expanded(
      child: RichText(
        text: TextSpan(
          text: TextStrings.iAgreeTo,
          style: Theme.of(context).textTheme.bodySmall,
          children: [
            WidgetSpan(
              child: InkWell(
                onTap: onPrivacyTap,
                child: Text(
                  TextStrings.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? AppColors.white : AppColors.primary,
                      ),
                ),
              ),
            ),
            const TextSpan(text: TextStrings.and),
            WidgetSpan(
              child: InkWell(
                onTap: onTermsTap,
                child: Text(
                  TextStrings.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? AppColors.white : AppColors.primary,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
