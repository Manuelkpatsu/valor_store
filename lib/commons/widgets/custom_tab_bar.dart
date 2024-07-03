import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/device/device_utility.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;

  const CustomTabBar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        labelColor: dark ? AppColors.white : AppColors.primary,
        tabs: tabs,
        tabAlignment: TabAlignment.start,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
