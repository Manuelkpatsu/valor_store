import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextStrings.loginTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
