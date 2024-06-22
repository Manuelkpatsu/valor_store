import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/image_strings.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Image(
      height: 150,
      image: AssetImage(dark ? ImageStrings.lightAppLogo : ImageStrings.darkAppLogo),
    );
  }
}
