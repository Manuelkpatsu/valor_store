import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class SettingsMenuTile extends StatelessWidget {
  final String title, subTitle;
  final IconData iconData;
  final Widget? trailing;
  final VoidCallback? onPressed;

  const SettingsMenuTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconData,
    this.trailing,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwSections),
      leading: Icon(iconData, color: AppColors.primary, size: 28),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onPressed,
    );
  }
}
