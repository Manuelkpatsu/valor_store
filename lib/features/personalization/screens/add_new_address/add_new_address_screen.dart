import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/commons/widgets/custom_app_bar.dart';
import 'package:valor_store/commons/widgets/save_button.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(TextStrings.addNewAddress), showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: TextStrings.name,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputField),
              TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: TextStrings.phoneNumber,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputField),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: TextStrings.street,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwInputField),
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: TextStrings.postalCode,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwInputField),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building),
                        labelText: TextStrings.city,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwInputField),
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: TextStrings.state,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwInputField),
              TextFormField(
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: TextStrings.country,
                ),
              ),
              const SizedBox(height: AppSizes.defaultSpace),
              SaveButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
