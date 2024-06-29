import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class ForgetPasswordButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ForgetPasswordButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: const Text(TextStrings.forgetPassword));
  }
}
