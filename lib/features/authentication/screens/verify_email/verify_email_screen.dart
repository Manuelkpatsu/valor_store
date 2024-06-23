import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/commons/widgets/continue_button.dart';
import 'package:valor_store/commons/widgets/success_screen.dart';
import 'package:valor_store/features/authentication/screens/login/login_screen.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

import 'widgets/resend_email_button.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          CloseButton(onPressed: () => Get.offAll(const LoginScreen())),
        ],
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
              TextStrings.confirmEmailTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              "emmaahuno@gmail.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              TextStrings.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            ContinueButton(
              onPressed: () => Get.to(
                SuccessScreen(
                  title: TextStrings.yourAccountCreatedTitle,
                  image: ImageStrings.successIllustration,
                  subTitle: TextStrings.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(const LoginScreen()),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            ResendEmailButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
