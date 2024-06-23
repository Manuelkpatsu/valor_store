import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/form_divider.dart';
import 'package:valor_store/commons/widgets/social_button.dart';
import 'package:valor_store/features/authentication/screens/verify_email/verify_email_screen.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/policy_and_terms.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/sign_up_title.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignUpTitle(),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TextStrings.firstName,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceBtwInputField),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TextStrings.lastName,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputField),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user_edit),
                        labelText: TextStrings.username,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputField),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct),
                        labelText: TextStrings.email,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputField),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.call),
                        labelText: TextStrings.phoneNumber,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputField),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TextStrings.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    Row(
                      children: [
                        Checkbox(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: true,
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),
                        PolicyAndTerms(onPrivacyTap: () {}, onTermsTap: () {}),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    SignUpButton(onPressed: () => Get.to(const VerifyEmailScreen())),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FormDivider(indent: 60, endIndent: 5),
                Text(
                  TextStrings.orSignUpWith.capitalize!,
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
