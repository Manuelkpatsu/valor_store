import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class LoginSubTitle extends StatelessWidget {
  const LoginSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      TextStrings.loginSubTitle,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
