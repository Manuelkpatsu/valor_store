import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/features/authentication/screens/login/login_screen.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

import 'widget/done_button.dart';
import 'widget/resend_email_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [CloseButton()],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImageStrings.deliveredEmailIllustration,
              width: HelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            Text(
              TextStrings.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              TextStrings.myEmailAddress,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              TextStrings.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            DoneButton(onPressed: () => Get.offAll(() => const LoginScreen())),
            const SizedBox(height: AppSizes.spaceBtwItems),
            ResendEmailButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
