import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class ProductDetailsImage extends StatelessWidget {
  final String imagePath;

  const ProductDetailsImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.productImageRadius * 2),
        child: Center(
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
