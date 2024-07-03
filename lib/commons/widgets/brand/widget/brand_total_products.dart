import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class BrandTotalProducts extends StatelessWidget {
  final int totalProducts;

  const BrandTotalProducts({super.key, required this.totalProducts});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextStrings.numberOfProducts(totalProducts),
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
