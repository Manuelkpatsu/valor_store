import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/features/personalization/screens/settings/settings_screen.dart';
import 'package:valor_store/features/shop/screens/home/home_screen.dart';
import 'package:valor_store/features/shop/screens/store/store_screen.dart';
import 'package:valor_store/features/shop/screens/wishlist/wishlist_screen.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = const [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    SettingsScreen(),
  ];
}
