import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberOfReviewsText extends StatelessWidget {
  final int numberOfReviews;

  const NumberOfReviewsText({super.key, required this.numberOfReviews});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('###,000');

    return Text(formatter.format(numberOfReviews), style: Theme.of(context).textTheme.bodySmall);
  }
}
