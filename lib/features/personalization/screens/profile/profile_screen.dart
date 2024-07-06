import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/circular_image.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/section_heading.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widgets/close_account_button.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackArrow: true, title: Text(TextStrings.profile)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: CircularImage(image: ImageStrings.user, width: 80, height: 80),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(TextStrings.changeProfilePicture),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            const Divider(height: 0),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const SectionHeading(title: TextStrings.profileInformation, showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems),
            ProfileMenu(
              title: TextStrings.name,
              value: TextStrings.myFullName,
              onPressed: () {},
            ),
            ProfileMenu(
              title: TextStrings.username,
              value: TextStrings.myUsername,
              onPressed: () {},
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const Divider(height: 0),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const SectionHeading(title: TextStrings.personalInformation, showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems),
            ProfileMenu(
              title: TextStrings.userId,
              value: TextStrings.myUserId,
              onPressed: () {},
              iconData: Iconsax.copy,
            ),
            ProfileMenu(
              title: TextStrings.email,
              value: TextStrings.myEmailAddress,
              onPressed: () {},
            ),
            ProfileMenu(
              title: TextStrings.phoneNumber,
              value: TextStrings.myPhoneNumber,
              onPressed: () {},
            ),
            ProfileMenu(
              title: TextStrings.gender,
              value: TextStrings.myGender,
              onPressed: () {},
            ),
            ProfileMenu(
              title: TextStrings.dateOfBirth,
              value: TextStrings.myDateOfBirth,
              onPressed: () {},
            ),
            const Divider(height: 0),
            const SizedBox(height: AppSizes.spaceBtwItems),
            CloseAccountButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
