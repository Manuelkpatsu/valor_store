import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/features/shop/screens/home/home_screen.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = const [
    HomeScreen(),
    Center(child: Text(TextStrings.store)),
    Center(child: Text(TextStrings.wishlist)),
    Center(child: Text(TextStrings.profile)),
  ];
}
