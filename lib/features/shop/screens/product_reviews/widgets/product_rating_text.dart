import 'package:flutter/material.dart';

class ProductRatingText extends StatelessWidget {
  final double rating;

  const ProductRatingText({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Text(
        rating.toStringAsFixed(1),
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
