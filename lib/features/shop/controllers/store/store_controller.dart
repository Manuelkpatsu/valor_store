import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class StoreController extends GetxController {
  static StoreController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  final List<Widget> tabs = const [
    Tab(child: Text(TextStrings.sports)),
    Tab(child: Text(TextStrings.furniture)),
    Tab(child: Text(TextStrings.electronics)),
    Tab(child: Text(TextStrings.clothes)),
    Tab(child: Text(TextStrings.cosmetics)),
  ];
}
