import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/styles/spacing_styles.dart';
import 'package:valor_store/commons/widgets/form_divider.dart';
import 'package:valor_store/commons/widgets/social_button.dart';
import 'package:valor_store/features/authentication/screens/forgot_password/forgot_password_screen.dart';
import 'package:valor_store/features/authentication/screens/sign_up/sign_up_screen.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/create_account_button.dart';
import 'widgets/forget_password_button.dart';
import 'widgets/login_logo.dart';
import 'widgets/login_sub_title.dart';
import 'widgets/login_title.dart';
import 'widgets/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyles.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginLogo(),
            const LoginTitle(),
            const SizedBox(height: AppSizes.sm),
            const LoginSubTitle(),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TextStrings.email,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputField),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TextStrings.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputField / 2),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text(TextStrings.rememberMe),
                        const Spacer(),
                        ForgetPasswordButton(
                          onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    SignInButton(onPressed: () {}),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    CreateAccountButton(onPressed: () => Get.to(const SignUpScreen())),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FormDivider(indent: 60, endIndent: 5),
                Text(
                  TextStrings.orSignInWith.capitalize!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const FormDivider(indent: 5, endIndent: 60),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(image: ImageStrings.google, onPressed: () {}),
                const SizedBox(width: AppSizes.spaceBtwItems),
                SocialButton(image: ImageStrings.facebook, onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
