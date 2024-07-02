import 'package:flutter/material.dart';

class BrandText extends StatelessWidget {
  final String title;

  const BrandText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
