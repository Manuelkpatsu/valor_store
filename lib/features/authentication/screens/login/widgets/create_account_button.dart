import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class CreateAccountButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CreateAccountButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
      ),
      child: const Text(TextStrings.createAccount),
    );
  }
}
