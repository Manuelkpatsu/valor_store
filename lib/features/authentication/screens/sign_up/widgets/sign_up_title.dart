import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextStrings.signUpTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
