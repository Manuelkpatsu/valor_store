import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/sizes.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class CheckoutButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String currencySign;
  final double price;

  const CheckoutButton({
    super.key,
    required this.onPressed,
    this.currencySign = '\$',
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
        ),
        child: Text('${TextStrings.checkout} $currencySign${price.toStringAsFixed(2)}'),
      ),
    );
  }
}
