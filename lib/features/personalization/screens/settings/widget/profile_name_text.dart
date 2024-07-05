import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';

class ProfileNameText extends StatelessWidget {
  final String name;

  const ProfileNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),
    );
  }
}
