import 'package:flutter/material.dart';

class RatingText extends StatelessWidget {
  final double rating;
  final int totalRatings;

  const RatingText({super.key, required this.rating, required this.totalRatings});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: rating.toStringAsFixed(1), style: Theme.of(context).textTheme.bodyLarge),
          TextSpan(text: '($totalRatings)'),
        ],
      ),
    );
  }
}
