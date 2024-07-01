import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/commons/widgets/rounded_image.dart';
import 'package:valor_store/utils/constants/image_strings.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  final List<Widget> banners = const [
    RoundedImage(imageUrl: ImageStrings.promoBanner1),
    RoundedImage(imageUrl: ImageStrings.promoBanner2),
    RoundedImage(imageUrl: ImageStrings.promoBanner3),
  ];

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
