import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/primary_header_container.dart';
import 'package:valor_store/commons/widgets/section_heading.dart';
import 'package:valor_store/features/personalization/screens/address/address_screen.dart';
import 'package:valor_store/features/personalization/screens/profile/profile_screen.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

import 'widget/edit_profile_button.dart';
import 'widget/logout_button.dart';
import 'widget/profile_email_text.dart';
import 'widget/profile_name_text.dart';
import 'widget/profile_photo.dart';
import 'widget/settings_menu_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      TextStrings.account,
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                  ListTile(
                    leading: const ProfilePhoto(photo: ImageStrings.user),
                    title: const ProfileNameText(name: TextStrings.username),
                    subtitle: const ProfileEmailText(email: TextStrings.myEmailAddress),
                    trailing: EditProfileButton(
                      onPressed: () => Get.to(() => const ProfileScreen()),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.defaultSpace),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: SectionHeading(title: TextStrings.accountSettings, showActionButton: false),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SettingsMenuTile(
              iconData: Iconsax.safe_home,
              title: TextStrings.myAddresses,
              subTitle: TextStrings.myAddressesSubTitle,
              onPressed: () => Get.to(() => const AddressScreen()),
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.shopping_cart,
              title: TextStrings.myCart,
              subTitle: TextStrings.myCartSubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.bag_tick,
              title: TextStrings.myOrders,
              subTitle: TextStrings.myOrdersSubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.bank,
              title: TextStrings.myBankAccount,
              subTitle: TextStrings.myBankAccountSubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.discount_shape,
              title: TextStrings.myCoupons,
              subTitle: TextStrings.myCouponsSubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.notification,
              title: TextStrings.notifications,
              subTitle: TextStrings.notificationsSubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.security_card,
              title: TextStrings.accountPrivacy,
              subTitle: TextStrings.accountPrivacySubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: SectionHeading(title: TextStrings.accountSettings, showActionButton: false),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SettingsMenuTile(
              iconData: Iconsax.document_upload,
              title: TextStrings.loadData,
              subTitle: TextStrings.loadDataSubTitle,
              onPressed: () {},
              trailing: const Icon(Iconsax.arrow_right_3, color: AppColors.primary, size: 18),
            ),
            SettingsMenuTile(
              iconData: Iconsax.location,
              title: TextStrings.geolocation,
              subTitle: TextStrings.geolocationSubTitle,
              trailing: Switch(value: true, onChanged: (value) {}),
            ),
            SettingsMenuTile(
              iconData: Iconsax.security_user,
              title: TextStrings.safeMode,
              subTitle: TextStrings.safeModeSubTitle,
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            SettingsMenuTile(
              iconData: Iconsax.image,
              title: TextStrings.hdImageQuality,
              subTitle: TextStrings.hdImageQualitySubTitle,
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            LogoutButton(onPressed: () {}),
            const SizedBox(height: AppSizes.spaceBtwSections * 2.5),
            const SizedBox(height: AppSizes.defaultSpace),
          ],
        ),
      ),
    );
  }
}
