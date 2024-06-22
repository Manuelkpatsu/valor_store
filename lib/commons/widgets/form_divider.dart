import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class FormDivider extends StatelessWidget {
  final double indent;
  final double endIndent;

  const FormDivider({super.key, required this.indent, required this.endIndent});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Expanded(
      child: Divider(
        color: dark ? AppColors.darkerGrey : AppColors.grey,
        thickness: 0.5,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}
