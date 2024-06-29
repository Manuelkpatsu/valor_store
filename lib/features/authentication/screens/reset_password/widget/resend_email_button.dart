import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class ResendEmailButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ResendEmailButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
      ),
      child: const Text(TextStrings.resendEmail),
    );
  }
}
