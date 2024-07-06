import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class CloseAccountButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CloseAccountButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(foregroundColor: Colors.red),
      child: const Text(TextStrings.closeAccount),
    );
  }
}
