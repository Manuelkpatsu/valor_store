import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class ProfileMenu extends StatelessWidget {
  final String title, value;
  final VoidCallback? onPressed;
  final IconData iconData;

  const ProfileMenu({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
    this.iconData = Iconsax.arrow_right_34,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(iconData, size: 18)),
          ],
        ),
      ),
    );
  }
}
