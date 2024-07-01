import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  final double width;
  final double height;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  final bool isCircular;
  final double radius;

  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.margin,
    this.child,
    this.backgroundColor = AppColors.white,
    this.isCircular = true,
    this.radius = 400,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: isCircular ? null : BorderRadius.circular(radius),
        shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
