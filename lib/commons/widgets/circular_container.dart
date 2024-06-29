import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  final double width;
  final double height;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: child,
    );
  }
}
