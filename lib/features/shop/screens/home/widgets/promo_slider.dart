import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/features/shop/controllers/home/home_controller.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: controller.banners,
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, __) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < controller.banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? AppColors.primary
                      : AppColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                  isCircular: false,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
