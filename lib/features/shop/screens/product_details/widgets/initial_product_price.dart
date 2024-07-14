import 'package:flutter/material.dart';

class InitialProductPrice extends StatelessWidget {
  final double price;
  final String currencySign;

  const InitialProductPrice({super.key, this.currencySign = '\$', required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$currencySign${price.toStringAsFixed(2)}',
      style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
    );
  }
}
