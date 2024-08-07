import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class CheckoutButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CheckoutButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
      ),
      child: const Text(TextStrings.checkout),
    );
  }
}
