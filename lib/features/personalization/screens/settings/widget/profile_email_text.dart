import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';

class ProfileEmailText extends StatelessWidget {
  final String email;

  const ProfileEmailText({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),
    );
  }
}
